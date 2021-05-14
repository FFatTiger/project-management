package cn.wzy.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * @author tiger
 * @date 2021/5/14
 */
@Data
@Accessors(chain = true)
@TableName("smbms_role")
public class Role {

    private Integer id;

    @TableField("role_name")
    private String roleName;

    @TableField("role_desc")
    private String roleDesc;
}
