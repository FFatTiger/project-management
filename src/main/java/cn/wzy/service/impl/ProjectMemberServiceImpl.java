package cn.wzy.service.impl;

import cn.wzy.dao.IProjectMemberMapper;
import cn.wzy.entity.ProjectMember;
import cn.wzy.service.IProjectMemberService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * @author wzy
 * @date 2021/4/22
 */
@Service
public class ProjectMemberServiceImpl extends ServiceImpl<IProjectMemberMapper, ProjectMember> implements IProjectMemberService {
}
