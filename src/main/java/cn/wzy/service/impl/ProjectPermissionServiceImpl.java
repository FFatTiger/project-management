package cn.wzy.service.impl;

import cn.wzy.dao.IProjectMemberMapper;
import cn.wzy.dao.IProjectPermissionMapper;
import cn.wzy.entity.ProjectMember;
import cn.wzy.entity.ProjectPermission;
import cn.wzy.service.IProjectMemberService;
import cn.wzy.service.IProjectPermissionService;
import cn.wzy.vo.ProjectMemberVO;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author wzy
 * @date 2021/4/22
 */
@Service
public class ProjectPermissionServiceImpl extends ServiceImpl<IProjectPermissionMapper, ProjectPermission> implements IProjectPermissionService {

}
