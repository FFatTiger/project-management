package cn.wzy.controller.project;

import cn.wzy.controller.BaseController;
import cn.wzy.dao.IProjectMemberMapper;
import cn.wzy.entity.*;
import cn.wzy.service.IProjectDocumentInfoService;
import cn.wzy.service.IProjectInfoService;
import cn.wzy.service.IProjectMemberService;
import cn.wzy.service.IProjectPermissionService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.SecurityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

/**
 * @author wzy
 * @date
 */
@Controller
@Slf4j
@RequestMapping("/project")
@RequiredArgsConstructor
public class ProjectInfoController extends BaseController {
    private final IProjectInfoService projectInfoService;
    private final IProjectMemberService projectMemberService;
    private final IProjectDocumentInfoService projectDocumentInfoService;
    private final IProjectPermissionService projectPermissionService;

    @GetMapping("/list")
    public ModelAndView getProjectList(ModelAndView mv) {
        List<ProjectInfo> list = projectInfoService.getByUserId(getCurUser().getId());
        mv.setViewName("/project/projectList.jsp");
        mv.addObject("PROJECT_INFO_LIST", list);

        return mv;
    }


    @GetMapping("/detail/{projectId}")
    public ModelAndView getProjectDetail(HttpServletRequest request, ModelAndView mv, @PathVariable("projectId") Integer projectId) {
        mv.setViewName("/project/projectDetail.jsp");
        ProjectInfo project = projectInfoService.getById(projectId);
        request.getSession().setAttribute("CUR_PROJECT", project);

        return mv;
    }


    @PostMapping("/save")
    @ResponseBody
    public String save(@RequestBody ProjectInfo projectInfo, HttpServletRequest request) {
        projectInfo.setArchive(0);
        projectInfo.setCreatedBy(getCurUser().getUserName());
        projectInfo.setLastModifiedBy(getCurUser().getUserName());
        projectInfoService.save(projectInfo);

        ProjectMember projectMember = new ProjectMember();
        projectMember.setProjectId(projectInfo.getId());
        projectMember.setUserId(getCurUser().getId());
        projectMember.setIsOwner(1);
        projectMember.setAuthorize("1");
        projectMember.setCreatedBy(getCurUser().getUserName());
        projectMember.setLastModifiedBy(getCurUser().getUserName());
        projectMemberService.save(projectMember);

        ProjectPermission permission = new ProjectPermission();
        permission.setRoleId(1)
                .setProjectId(projectInfo.getId())
                .setUserId(getCurUser().getId());
        projectPermissionService.save(permission);

        List<ProjectInfo> projectInfos = projectInfoService.getByUserId(getCurUser().getId());
        request.getSession().setAttribute("PROJECT_INFO", projectInfos);

        return projectInfo.getId().toString();
    }

    @GetMapping("/del/{projectId}")
    public String del(@PathVariable("projectId") Integer projectId) {
        projectInfoService.removeById(projectId);
        projectMemberService.lambdaUpdate().eq(ProjectMember::getProjectId, projectId)
                .eq(ProjectMember::getUserId, getCurUser().getId())
                .remove();
        projectDocumentInfoService.lambdaQuery().eq(ProjectDocumentInfo::getProjectId, projectId);
        return "/project/list";
    }

    @GetMapping("/archive/{projectId}")
    public String archive(@PathVariable("projectId") Integer projectId) {
        ProjectInfo projectInfo = new ProjectInfo();
        projectInfo.setArchive(1)
                .setId(projectId)
                .setArchiveTime(new Date());
        projectInfoService.updateById(projectInfo);
        return "/project/list";
    }
}
