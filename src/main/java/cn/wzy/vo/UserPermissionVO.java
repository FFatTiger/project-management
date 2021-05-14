package cn.wzy.vo;

import cn.wzy.entity.Role;
import cn.wzy.entity.User;
import lombok.Data;
import lombok.experimental.Accessors;

import java.util.List;

/**
 * @author tiger
 * @date 2021/5/14
 */
@Data
@Accessors(chain = true)
public class UserPermissionVO {

    private List<User> users;

    private List<Role> roles;
}
