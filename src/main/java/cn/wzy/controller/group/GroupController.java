package cn.wzy.controller.group;

import cn.wzy.service.IProjectGroupService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
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
@RequestMapping("/group")
@RequiredArgsConstructor
public class GroupController {
    private final IProjectGroupService groupService;

    @GetMapping("/list")
    public ModelAndView getGroupInfoList(ModelAndView mv) {
        mv.setViewName("/group/groupList.jsp");
        mv.addObject("GROUP_LIST", groupService.list());
        return mv;
    }
}
