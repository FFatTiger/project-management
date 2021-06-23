package cn.wzy.controller;

import cn.wzy.entity.User;
import cn.wzy.util.UserRealm;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.mgt.RealmSecurityManager;
import org.apache.shiro.subject.SimplePrincipalCollection;
import org.apache.shiro.subject.Subject;

/**
 * @author wzy
 * @date 2021/4/22
 */
public class BaseController {


    protected User getCurUser() {

        return (User) SecurityUtils.getSubject().getPrincipal();
    }

    protected boolean hasRole(String role) {
        return SecurityUtils.getSubject().hasRole(role);
    }

    /**
     * 重新赋值权限(在比如:给一个角色临时添加一个权限,需要调用此方法刷新权限,否则还是没有刚赋值的权限)
     * @param myRealm 自定义的realm
     * @param username 用户名
     */
    protected void reloadAuthorizing(){
        RealmSecurityManager rsm = (RealmSecurityManager) SecurityUtils.getSecurityManager();
        UserRealm userRealm = (UserRealm) rsm.getRealms().iterator().next();
        Subject subject = SecurityUtils.getSubject();
        String realmName = subject.getPrincipals().getRealmNames().iterator().next();
        //第一个参数为用户名,第二个参数为realmName,test想要操作权限的用户
        SimplePrincipalCollection principals = new SimplePrincipalCollection(getCurUser(),realmName);
        subject.runAs(principals);
        userRealm.getAuthorizationCache().remove(subject.getPrincipals());
        subject.releaseRunAs();
    }

}
