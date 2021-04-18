package cn.wzy.controller.group;

import cn.wzy.service.IProjectGroupMemberService;
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
@RequestMapping("/groupMember")
@RequiredArgsConstructor
public class GroupMemberController {
    private final IProjectGroupMemberService groupMemberService;

    @GetMapping("list")
    public ModelAndView getGroupMember(ModelAndView mv) {
        mv.setViewName("/group/groupMemberList.jsp");
        mv.addObject("GROUP_MEMBER_LIST", mv);

        return mv;
    }
}
