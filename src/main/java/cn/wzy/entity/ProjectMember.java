package cn.wzy.entity;

import com.alibaba.fastjson.annotation.JSONField;
import com.baomidou.mybatisplus.annotation.*;

import java.util.Date;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 项目管理-项目-成员表
 * </p>
 *
 * @author wzy
 * @since 2021-03-25
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("project_member")
//@ApiModel(value="ProjectMember对象", description="项目管理-项目-成员表")
public class ProjectMember implements Serializable {


    //@ApiModelProperty(value = "id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    //@ApiModelProperty(value = "项目id")
    @TableField("project_id")
    private Integer projectId;

    //@ApiModelProperty(value = "成员id")
    @TableField("user_id")
    private Integer userId;

    //@ApiModelProperty(value = "加入时间")
    @TableField("join_time")
    @JSONField(format = "yyyy-MM-dd")
    private Date joinTime;

    //@ApiModelProperty(value = "拥有者")
    @TableField("is_owner")
    private Integer isOwner;

    //@ApiModelProperty(value = "角色")
    @TableField("authorize")
    private String authorize;

    //@ApiModelProperty(value = "逻辑删除标志 1：已删除， 0：未删除，默认0")
    @TableField("is_delete")
    @TableLogic
    private Boolean deleted;

    //@ApiModelProperty(value = "版本号")
    @TableField("version")
    @Version
    private Integer version;

    //@ApiModelProperty(value = "创建人")
    @TableField(value = "created_by", fill = FieldFill.INSERT)
    private String createdBy;

    //@ApiModelProperty(value = "创建时间")
    @TableField("created_time")
    @JSONField(format = "yyyy-MM-dd")
    private Date createdTime;

    //@ApiModelProperty(value = "更新人")
    @TableField(value = "last_modified_by",fill = FieldFill.INSERT_UPDATE)
    private String lastModifiedBy;

    //@ApiModelProperty(value = "更新时间")
    @TableField("last_modified_time")
    @JSONField(format = "yyyy-MM-dd")
    private Date lastModifiedTime;


}
