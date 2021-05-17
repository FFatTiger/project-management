package cn.wzy.service;

import cn.wzy.entity.ProjectMember;
import cn.wzy.entity.ProjectPermission;
import cn.wzy.vo.ProjectMemberVO;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * @author wzy
 * @date 2021/4/22
 */
public interface IProjectPermissionService extends IService<ProjectPermission> {

    ProjectPermission getPermissionByProIdAndUserId(Integer projectId, Integer userId);
}
