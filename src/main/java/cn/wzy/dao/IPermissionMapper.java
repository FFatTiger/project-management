package cn.wzy.dao;

import cn.wzy.entity.Permission;

import java.util.List;

public interface IPermissionMapper {

    public List<Permission> getAllPermissionByUserType(Integer userType);

    public List<Permission> getAllNotMenuByUserType(Integer userType);

}
