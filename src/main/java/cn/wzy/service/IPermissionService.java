package cn.wzy.service;

import cn.wzy.entity.Permission;

import java.util.List;

public interface IPermissionService {

    public List<Permission> getAllPermissionByUserType(Integer userType);

    public List<Permission> getAllNotMenuByUserType(Integer userType);
}
