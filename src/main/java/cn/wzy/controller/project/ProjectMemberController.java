package cn.wzy.controller.project;

import cn.wzy.controller.BaseController;
import cn.wzy.entity.ProjectInfo;
import cn.wzy.entity.ProjectMember;
import cn.wzy.entity.ProjectPermission;
import cn.wzy.service.IProjectMemberService;
import cn.wzy.service.IProjectPermissionService;
import cn.wzy.vo.ProjectMemberVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

/**
 * @author tiger
 * @date 2021/5/13
 */
@RequestMapping("/projectMember")
@Controller
@Slf4j
@RequiredArgsConstructor
public class ProjectMemberController extends BaseController {
    private final IProjectMemberService projectMemberService;
    private final IProjectPermissionService projectPermissionService;
    @GetMapping("/list/{projectId}")
    public ModelAndView getProjectMembersById(HttpServletRequest request, ModelAndView mav, @PathVariable Integer projectId) {
        List<ProjectMemberVO> projectMemberList = projectMemberService.getMemberVOByProjectId(projectId);
        mav.addObject("PROJECT_MEMBER_LIST", projectMemberList);
        mav.setViewName("/project/projectMemberList.jsp");

        return mav;
    }

    @PostMapping("/add")
    public String addMember(HttpServletRequest request, @RequestParam("userId") Integer userId,  @RequestParam("roleId") Integer roleId) {
        if (hasRole("custom")) {
            throw new RuntimeException("无权操作");
        } else if (hasRole("manager") && roleId != 3) {
            throw new RuntimeException("无权操作");
        }
        //增加成员信息
        ProjectMember projectMember = new ProjectMember();
        ProjectInfo curProject = (ProjectInfo) request.getSession().getAttribute("CUR_PROJECT");
        projectMember.setCreatedBy(getCurUser().getUserName())
                .setLastModifiedBy(getCurUser().getUserName())
                .setIsOwner(0)
                .setProjectId(curProject.getId())
                .setAuthorize(roleId.toString())
                .setJoinTime(new Date())
                .setUserId(userId);

        projectMemberService.save(projectMember);

        //增加权限信息
        ProjectPermission permission = new ProjectPermission();
        permission.setProjectId(curProject.getId())
                .setRoleId(roleId)
                .setUserId(userId);
        projectPermissionService.save(permission);

        return "/projectMember/list/" + curProject.getId();
    }


}
