package cn.wzy.dao;

import cn.wzy.entity.ProjectDocumentInfo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * 项目管理-文件表 Mapper 接口
 * </p>
 *
 * @author wzy
 * @since 2021-03-25
 */
public interface IProjectDocumentInfoMapper extends BaseMapper<ProjectDocumentInfo> {

    List<ProjectDocumentInfo> getDocumentInfoByProjectIdAndCondition(@Param("projectId") Integer projectId, @Param("searchCondition") String  searchCondition);
}
