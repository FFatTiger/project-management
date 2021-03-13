package cn.wzy.controller.restController;

import cn.wzy.entity.Group;
import cn.wzy.entity.User;
import cn.wzy.service.IGroupService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.xml.ws.Action;

/**
 * 组织控制器
 *
 * @author FatTiger
 * @date 2021-03-09 16:05
 **/
@Controller
@RequestMapping("/group")
@Slf4j
public class GroupController {
    @Autowired
    IGroupService groupService;

    @GetMapping("/get")
    public ModelAndView getGroupInfoByUserId(ModelAndView mv) {
        User principal = (User) SecurityUtils.getSubject().getPrincipal();

        System.out.println(principal);
        log.info("当前用户信息{}", principal);
        Group userGroupInfo = groupService.getOne(new QueryWrapper<Group>().eq("id", principal.getId()));


        if (ObjectUtils.isEmpty(userGroupInfo)) {
            mv.addObject("group_msg", "您未加入任何组织");
            mv.setViewName("/group/groupView.jsp");
        }

        return mv;
    }

}