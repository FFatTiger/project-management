package cn.wzy.controller.project;

import cn.wzy.controller.BaseController;
import cn.wzy.entity.ProjectDocumentInfo;
import cn.wzy.entity.User;
import cn.wzy.service.IProjectDocumentInfoService;
import cn.wzy.service.IProjectInfoService;
import com.alibaba.fastjson.JSONObject;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.apache.shiro.SecurityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * @author wzy
 * @date 2021/3/29
 */
@Controller
@Slf4j
@RequestMapping("/projectDocument")
@RequiredArgsConstructor
public class ProjectDocumentInfoController extends BaseController {

    private final IProjectDocumentInfoService projectDocumentInfoService;
    private final IProjectInfoService projectInfoService;

    @GetMapping("/list")
    public ModelAndView getDocumentInfo(HttpServletRequest request, ModelAndView mv,@RequestParam("searchCondition") String searchCondition,@RequestParam("projectId") Integer projectId) {

        mv.addObject(
                        "FILE_INFO_LIST",
                        projectDocumentInfoService.getDocumentInfoByUserIdAndCondition(projectId, searchCondition));
        mv.addObject("CUR_USER_ID", getCurUser().getId());
        mv.setViewName("/project/projectDocumentInfoList.jsp");

        return mv;
    }

    @PostMapping("/upload")
    @ResponseBody
    public Map<String, Object> upload(HttpServletRequest request, @RequestParam("file") MultipartFile file, Integer projectId) {
        JSONObject jsonObject = new JSONObject();
        ProjectDocumentInfo projectDocumentInfo = new ProjectDocumentInfo();
        if (!file.isEmpty()) {

            try {
                System.out.println("springmvc文件上传...");

                // 使用fileupload组件完成文件上传
                // 1. 指定文件上传保存的位置
                String path = request.getSession().getServletContext().getRealPath("/uploads/" + "usr" + getCurUser().getId() + "/");

                // 判断该路径是否存在
                File newFile = new File(path);
                if (!newFile.exists() || !newFile.isDirectory()) {
                    newFile.mkdirs();
                }
                // 打印一下文件保存的路径
                System.out.println("path:" + path);

                // 说明上传文件项
                // 2. 获取上传文件的名称
                String filename = file.getOriginalFilename();
                String[] types = filename.split("\\.");
                projectDocumentInfo.setTitle(types[0]);
                // 把文件的名称设置唯一值，uuid
                String uuid = UUID.randomUUID().toString().replace("-", "");
                filename = uuid + "_" + filename;
                // 3.上传文件
                file.transferTo(new File(path, filename));

                //保存文件信息
                projectDocumentInfo
                        .setProjectId(projectId)
                        .setDownloads(0)
                        .setFileType(types[types.length-1])
                        .setFileUrl(path + filename)
                        .setSize(file.getSize()/1024.0/1024.0)
                        .setPathName(path + filename)
                        .setAudit(false)
                        .setUploadUserId(getCurUser().getId())
                        .setCreatedBy(getCurUser().getUserName())
                        .setLastModifiedBy(getCurUser().getUserName());
                projectDocumentInfoService.insertOne(projectDocumentInfo);
                jsonObject.put("success", file.getOriginalFilename());
                return jsonObject;
            } catch (Exception e) {
                jsonObject.put("failed", file.getOriginalFilename());
                return jsonObject;
            }
        } else {
            jsonObject.put("failed", file.getOriginalFilename());
            return jsonObject;
        }
    }

    @GetMapping("/download/{fileId}")
    @ResponseBody
    public void download(HttpServletResponse response, @PathVariable("fileId") Integer fileId) throws IOException {
        ProjectDocumentInfo documentInfo = projectDocumentInfoService.getById(fileId);
        String filePath = documentInfo.getFileUrl();
        response.setCharacterEncoding("utf-8");
        response.setContentType("multipart/form-data");
        response.setHeader("Content-Disposition", "attachment;fileName=" + URLEncoder.encode(documentInfo.getTitle() +"."+ documentInfo.getFileType(),"utf-8"));
        OutputStream os = null;
        InputStream inputStream = null;
        try {
            //打开本地文件流
            inputStream = new FileInputStream(filePath);
            //激活下载操作
            os = response.getOutputStream();
            IOUtils.copy(inputStream, os);
            documentInfo.incrementDownloads();
            projectDocumentInfoService.updateById(documentInfo);
        } catch (Exception e) {

        } finally {
            os.close();
            inputStream.close();
        }
    }

    @GetMapping("/del/{fileId}")
    public String del(@PathVariable("fileId") Integer fileId) {
        ProjectDocumentInfo projectDocumentInfo = projectDocumentInfoService.getById(fileId);
        if (getCurUser().getId().equals(projectDocumentInfo.getUploadUserId())) {
            projectDocumentInfoService.removeById(fileId);
            return "/projectDocument/list?projectId="+projectDocumentInfo.getProjectId()+"&searchCondition=";
        }
        return "/projectDocument/list?projectId="+projectDocumentInfo.getProjectId()+"&searchCondition=";

    }


    @GetMapping("/audit/{fileId}")
    public String audit(@PathVariable("fileId") Integer fileId) {

        ProjectDocumentInfo projectDocumentInfo = projectDocumentInfoService.getById(fileId);
        projectDocumentInfo.setAudit(true);

        projectDocumentInfoService.updateById(projectDocumentInfo);

        return "/projectDocument/list?projectId="+projectDocumentInfo.getProjectId()+"&searchCondition=";
    }

    @GetMapping("/updateFileName")
    @ResponseBody
    public Boolean updateFileName(@RequestParam("fileId") Integer fileId, @RequestParam("newName") String newName) {

        ProjectDocumentInfo projectDocumentInfo = new ProjectDocumentInfo();
        projectDocumentInfo.setId(fileId)
                .setTitle(newName);

        return projectDocumentInfoService.updateById(projectDocumentInfo);
    }
}
