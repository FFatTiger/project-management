package cn.wzy.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.Version;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import com.baomidou.mybatisplus.annotation.TableLogic;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 项目管理-组织-成员表
 * </p>
 *
 * @author wzy
 * @since 2021-03-09
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("group_member")
//@ApiModel(value="GroupMember对象", description="项目管理-组织-成员表")
public class GroupMember implements Serializable {


    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    //@ApiModelProperty(value = "组织id")
    @TableField("group_id")
    private String groupId;

    //@ApiModelProperty(value = "成员id")
    @TableField("user_id")
    private String userId;

    //@ApiModelProperty(value = "加入时间")
    @TableField("join_time")
    private String joinTime;

    //@ApiModelProperty(value = "1:拥有者 0:普通")
    @TableField("is_owner")
    private Boolean owner;

    //@ApiModelProperty(value = "角色")
    @TableField("authorize")
    private String authorize;

    //@ApiModelProperty(value = "逻辑删除标志 1：已删除， 0：未删除，默认0")
    @TableField("is_delete")
    @TableLogic
    private Boolean delete;

    //@ApiModelProperty(value = "版本号")
    @TableField("version")
    @Version
    private Integer version;

    //@ApiModelProperty(value = "创建人")
    @TableField("created_by")
    private String createdBy;

    //@ApiModelProperty(value = "创建时间")
    @TableField("created_time")
    private LocalDateTime createdTime;

    //@ApiModelProperty(value = "更新人")
    @TableField("last_modified_by")
    private String lastModifiedBy;

    //@ApiModelProperty(value = "更新时间")
    @TableField("last_modified_time")
    private LocalDateTime lastModifiedTime;


}
