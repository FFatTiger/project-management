package cn.wzy.service.impl;


import cn.wzy.dao.IProjectPermissionMapper;
import cn.wzy.entity.ProjectPermission;
import cn.wzy.service.IProjectPermissionService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;



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
}
