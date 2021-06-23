package cn.wzy.service.impl;

import cn.wzy.dao.IPermissionMapper;
import cn.wzy.dao.IProjectPermissionMapper;
import cn.wzy.entity.Permission;
import cn.wzy.service.IPermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PermissionServiceImpl implements IPermissionService {
    @Autowired
    private IPermissionMapper permissionDao;

    @Override
    public List<Permission> getAllPermissionByUserType(Integer userType) {
        return permissionDao.getAllPermissionByUserType(userType);
    }

    @Override
    public List<Permission> getAllNotMenuByUserType(Integer userType) {
        return permissionDao.getAllNotMenuByUserType(userType);
    }
}
