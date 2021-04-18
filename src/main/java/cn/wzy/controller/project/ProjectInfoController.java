package cn.wzy.controller.project;

import cn.wzy.entity.ProjectInfo;
import cn.wzy.entity.User;
import cn.wzy.service.IProjectInfoService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.SecurityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @author wzy
 * @date
 */
@Controller
@Slf4j
@RequestMapping("/project")
@RequiredArgsConstructor
public class ProjectInfoController {
    private final IProjectInfoService projectInfoService;

    @GetMapping("/list")
    public ModelAndView getProjectList(ModelAndView mv) {
        User user  = (User) SecurityUtils.getSubject().getPrincipal();
        List<ProjectInfo> list = projectInfoService.getByUserId(user.getId().longValue());
        mv.setViewName("/project/projectList.jsp");
        mv.addObject("PROJECT_INFO_LIST", list);

        return mv;
    }
}
