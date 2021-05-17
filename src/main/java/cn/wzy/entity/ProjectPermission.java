package cn.wzy.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * @author tiger
 * @date 2021/5/14
 */
@Data
@Accessors(chain = true)
@TableName("project_permission")
public class ProjectPermission {

    @TableId(type = IdType.AUTO)
    private Integer id;

    @TableField("project_id")
    private Integer projectId;

    @TableField("user_id")
    private Integer userId;

    @TableField("role_id")
    private Integer roleId;
}
