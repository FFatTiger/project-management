package cn.wzy.dao;

import cn.wzy.entity.ProjectMember;
import cn.wzy.vo.ProjectMemberVO;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * <p>
 * 项目管理-项目-成员表 Mapper 接口
 * </p>
 *
 * @author wzy
 * @since 2021-03-25
 */
public interface IProjectMemberMapper extends BaseMapper<ProjectMember> {

    List<ProjectMemberVO> getMemberVOByProjectId(Integer projectId);
}
