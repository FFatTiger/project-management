package cn.wzy.controller.project;

import cn.wzy.controller.BaseController;
import cn.wzy.dao.IProjectMemberMapper;
import cn.wzy.entity.ProjectDocumentInfo;
import cn.wzy.entity.ProjectInfo;
import cn.wzy.entity.ProjectMember;
import cn.wzy.entity.User;
import cn.wzy.service.IProjectDocumentInfoService;
import cn.wzy.service.IProjectInfoService;
import cn.wzy.service.IProjectMemberService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.SecurityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

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

    @GetMapping("/list")
    public ModelAndView getProjectList(ModelAndView mv) {
        List<ProjectInfo> list = projectInfoService.getByUserId(getCurUser().getId().longValue());
        mv.setViewName("/project/projectList.jsp");
        mv.addObject("PROJECT_INFO_LIST", list);

        return mv;
    }

    @PostMapping("/save")
    @ResponseBody
    public Boolean save(@RequestBody ProjectInfo projectInfo) {
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
        return projectMemberService.save(projectMember);
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
