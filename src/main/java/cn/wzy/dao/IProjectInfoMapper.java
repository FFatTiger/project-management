package cn.wzy.dao;

import cn.wzy.entity.ProjectInfo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * <p>
 * 文档信息 Mapper 接口
 * </p>
 *
 * @author wzy
 * @since 2021-03-25
 */
public interface IProjectInfoMapper extends BaseMapper<ProjectInfo> {

    /**
     * 获取用户加入的项目的信息
     * @param id
     * @return
     */
    List<ProjectInfo> getByUserId(Integer id);
}
