package cn.wzy.controller.restController;


import cn.wzy.entity.Role;
import cn.wzy.service.IProjectPermissionService;
import com.alibaba.fastjson.JSONArray;
import cn.wzy.entity.Permission;
import cn.wzy.entity.User;
import cn.wzy.service.IPermissionService;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequestMapping("/perm")
@RestController
public class RestPermController {

    @Autowired
    private IProjectPermissionService permissionService;

    @RequestMapping(value = "/getMenu",produces = "text/html;charset=utf-8")
    public String getAllMenu(){

        Subject sb = SecurityUtils.getSubject();
        User user = (User)sb.getPrincipal();
        List<Permission> list = permissionService.getAllPermissionByUserType(1);
        return JSONArray.toJSON(list).toString();
    }

}
