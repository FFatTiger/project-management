package cn.wzy.service.impl;


import cn.wzy.dao.IProjectPermissionMapper;
import cn.wzy.entity.Permission;
import cn.wzy.entity.ProjectPermission;
import cn.wzy.service.IProjectPermissionService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


/**
 * @author wzy
 * @date 2021/4/22
 */
@Service
public class ProjectPermissionServiceImpl extends ServiceImpl<IProjectPermissionMapper, ProjectPermission> implements IProjectPermissionService {

    @Override
    public ProjectPermission getPermissionByProIdAndUserId(Integer projectId, Integer userId) {
         return getBaseMapper().getPermissionByProIdAndUserId(projectId, userId);
    }

    @Override
    public List<Permission> getAllPermissionByUserType(Integer roleId) {
        return getBaseMapper().getAllPermissionByUserType(roleId);
    }

    @Override
    public List<Permission> getAllNotMenuByUserType(Integer roleId) {
        return getBaseMapper().getAllNotMenuByUserType(roleId);
    }
}
