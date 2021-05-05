package cn.wzy.controller.group;

import cn.wzy.controller.BaseController;
import cn.wzy.entity.ProjectGroup;
import cn.wzy.entity.User;
import cn.wzy.service.IProjectGroupService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @author wzy
 * @date 2021/3/29
 */
@Controller
@Slf4j
@RequestMapping("/group")
@RequiredArgsConstructor
public class GroupController extends BaseController {
    private final IProjectGroupService groupService;

    @GetMapping("/list")
    public ModelAndView getGroupInfoList(ModelAndView mv) {
        mv.setViewName("/group/groupList.jsp");
        mv.addObject("GROUP_LIST", groupService.list());
        return mv;
    }

    @GetMapping("/isOwnerList")
    public ModelAndView getIsOwnerList(ModelAndView mv) {
        mv.setViewName("/project/projectAdd.jsp");
        User curUser = getCurUser();
        List<ProjectGroup> list = groupService.lambdaQuery().eq(ProjectGroup::getOwnerUserId, curUser.getId()).list();
        mv.addObject("IS_OWNER_GROUP_LIST", list);
        return mv;
    }
}
