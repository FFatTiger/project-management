package cn.wzy.dao;

import cn.wzy.entity.ProjectPermission;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

/**
 * @author tiger
 * @date 2021/5/14
 */
public interface IProjectPermissionMapper extends BaseMapper<ProjectPermission> {
    ProjectPermission getPermissionByProIdAndUserId(@Param("projectId") Integer projectId,@Param("userId")  Integer userId);
}
