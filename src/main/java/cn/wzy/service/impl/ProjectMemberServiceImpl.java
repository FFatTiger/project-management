package cn.wzy.service.impl;

import cn.wzy.dao.IProjectMemberMapper;
import cn.wzy.entity.ProjectMember;
import cn.wzy.service.IProjectMemberService;
import cn.wzy.vo.ProjectMemberVO;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author wzy
 * @date 2021/4/22
 */
@Service
public class ProjectMemberServiceImpl extends ServiceImpl<IProjectMemberMapper, ProjectMember> implements IProjectMemberService {
    @Override
    public List<ProjectMemberVO> getMemberVOByProjectId(Integer projectId,String searchCondition) {
        return getBaseMapper().getMemberVOByProjectId(projectId, searchCondition);
    }
}
