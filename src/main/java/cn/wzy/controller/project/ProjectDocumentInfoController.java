package cn.wzy.controller.project;

import cn.wzy.entity.ProjectDocumentInfo;
import cn.wzy.entity.User;
import cn.wzy.service.IProjectDocumentInfoService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.SecurityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author wzy
 * @date 2021/3/29
 */
@Controller
@Slf4j
@RequestMapping("/projectDocument")
@RequiredArgsConstructor
public class ProjectDocumentInfoController {

    private final IProjectDocumentInfoService projectDocumentInfoService;

    @GetMapping("/list")
    public ModelAndView getDocumentInfo(ModelAndView mv) {
        User user = (User) SecurityUtils.getSubject().getPrincipal();

        mv.addObject(
                        "FILE_INFO_LIST",
                        projectDocumentInfoService.lambdaQuery()
                                        .eq(ProjectDocumentInfo::getUploadUserId, user.getId())
                                        .orderByDesc(ProjectDocumentInfo::getProjectId)
                                        .list());
        mv.setViewName("/project/projectFileList.jsp");

        return mv;
    }
}
