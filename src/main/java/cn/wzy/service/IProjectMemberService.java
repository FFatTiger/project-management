package cn.wzy.service;

import cn.wzy.entity.ProjectInfo;
import cn.wzy.entity.ProjectMember;
import cn.wzy.vo.ProjectMemberVO;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * @author wzy
 * @date 2021/4/22
 */
public interface IProjectMemberService extends IService<ProjectMember> {
    List<ProjectMemberVO> getMemberVOByProjectId(Integer projectId, String searchCondition);
}
