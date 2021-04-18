package cn.wzy.service.impl;

import cn.wzy.dao.IProjectGroupMemberMapper;
import cn.wzy.entity.ProjectGroupMember;
import cn.wzy.service.IProjectGroupMemberService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * @author wzy
 * @date 2021/3/29
 */
@Service
public class ProjectGroupMemberServiceImpl extends ServiceImpl<IProjectGroupMemberMapper, ProjectGroupMember> implements IProjectGroupMemberService {
}
