package cn.wzy.util;

import cn.wzy.entity.Permission;
import cn.wzy.entity.User;
import cn.wzy.service.IPermissionService;
import cn.wzy.service.IUserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.mgt.SessionManager;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class UserRealm extends AuthorizingRealm {

    @Autowired
    private IUserService userService;

    @Autowired
    private IPermissionService permissionService;

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        Subject sb = SecurityUtils.getSubject();
        User user = (User)sb.getPrincipal();
        String username = user.getUserName();
        String role = user.getRole();
        Set<String> set = new HashSet<>();
        set.add(role);
        SimpleAuthorizationInfo zationInfo = new SimpleAuthorizationInfo();
        zationInfo.setRoles(set);

        List<Permission> list = permissionService.getAllNotMenuByUserType(user.getUserType());
        Set<String> perms = new HashSet<>();
        for (Permission p :list) {
            perms.add(p.getPermUrl());
        }
        zationInfo.setStringPermissions(perms);
        return zationInfo;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {

        UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
        String username = token.getUsername();
        String password = new String(token.getPassword());
        User user = userService.getUserByUserCode(username);
        if(user==null){
            throw new UnknownAccountException();
        }
        SimpleAuthenticationInfo cation = new SimpleAuthenticationInfo(user,user.getUserPassword(), ByteSource.Util.bytes(user.getSalt()),getName());
        return cation;
    }
}
