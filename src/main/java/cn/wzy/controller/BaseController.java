package cn.wzy.controller;

import cn.wzy.entity.User;
import org.apache.shiro.SecurityUtils;

/**
 * @author wzy
 * @date 2021/4/22
 */
public class BaseController {

    private User curUser;

    protected User getCurUser() {
        if (curUser == null) {
            curUser = (User) SecurityUtils.getSubject().getPrincipal();
        }
        return curUser;
    }
}
