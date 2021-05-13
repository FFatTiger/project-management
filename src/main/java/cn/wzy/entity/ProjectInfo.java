package cn.wzy.entity;

import com.alibaba.fastjson.annotation.JSONField;
import com.baomidou.mybatisplus.annotation.*;

import java.util.Date;
import java.io.Serializable;


import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * <p>
 * 文档信息
 * </p>
 *
 * @author wzy
 * @since 2021-03-25
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("project_info")
public class ProjectInfo implements Serializable {


    //@ApiModelProperty(value = "id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    //@ApiModelProperty(value = "名称")
    @TableField("name")
    private String name;

    //@ApiModelProperty(value = "描述")
    @TableField("description")
    private String description;

    //@ApiModelProperty(value = "访问控制类型 0:open, 1:private, 2:custom")
    @TableField("access_control_type")
    private Integer accessControlType;

    //@ApiModelProperty(value = "组织id")
    @TableField("group_id")
    private Long groupId;

    //@ApiModelProperty(value = "是否私有 1:是 0:否")
    @TableField("is_private")
    private Integer isPrivate;

    //@ApiModelProperty(value = "是否开启项目前缀 1:是 0:否")
    @TableField("open_prefix")
    private Integer openPrefix;

    //@ApiModelProperty(value = "是否归档 1:是 0:否")
    @TableField("archive")
    private Integer archive;

    //@ApiModelProperty(value = "归档时间")
    @JSONField(format="yyyy-MM-dd HH:mm:ss")
    @TableField("archive_time")
    private Date archiveTime;

    //@ApiModelProperty(value = "项目开始日期")
    @JSONField(format="yyyy-MM-dd HH:mm:ss")
    @TableField("begin_time")
    private Date beginTime;

    //@ApiModelProperty(value = "项目截止日期")
    @JSONField(format="yyyy-MM-dd")
    @TableField("end_time")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date endTime;

    //@ApiModelProperty(value = "逻辑删除标志 1：已删除， 0：未删除，默认0")
    @TableField("is_delete")
    @TableLogic
    private Boolean deleted;

    //@ApiModelProperty(value = "版本号")
    @TableField("version")
    
    private Integer version;

    //@ApiModelProperty(value = "创建人")
    @TableField(value = "created_by", fill = FieldFill.INSERT)
    private String createdBy;

    //@ApiModelProperty(value = "创建时间")
    @JSONField(format="yyyy-MM-dd HH:mm:ss")
    @TableField("created_time")
    private Date createdTime;

    //@ApiModelProperty(value = "更新人")
    @TableField(value = "last_modified_by")
    private String lastModifiedBy;

    //@ApiModelProperty(value = "更新时间")
    @JSONField(format="yyyy-MM-dd HH:mm:ss")
    @TableField("last_modified_time")
    private Date lastModifiedTime;


}
