package cn.wzy.service.impl;

import cn.wzy.dao.IRoleMapper;
import cn.wzy.entity.Role;
import cn.wzy.service.IRoleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * @author tiger
 * @date 2021/5/14
 */
@Service
public class RoleServiceImpl extends ServiceImpl<IRoleMapper, Role> implements IRoleService {
}
