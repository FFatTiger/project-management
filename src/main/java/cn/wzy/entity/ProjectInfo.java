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
 * 
 * </p>
 *
 * @author wzy
 * @since 2021-03-09
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("project_info")
//@ApiModel(value="ProjectInfo对象", description="")
public class ProjectInfo implements Serializable {


    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    //@ApiModelProperty(value = "封面")
    @TableField("cover")
    private String cover;

    //@ApiModelProperty(value = "名称")
    @TableField("name")
    private String name;

    //@ApiModelProperty(value = "描述")
    @TableField("description")
    private String description;

    //@ApiModelProperty(value = "访问控制l类型 0:open, 1:private, 2:custom")
    @TableField("access_control_type")
    private Integer accessControlType;

    //@ApiModelProperty(value = "可以访问项目的权限组（白名单）")
    @TableField("white_list")
    private String whiteList;

    //@ApiModelProperty(value = "项目类型")
    @TableField("template_code")
    private String templateCode;

    //@ApiModelProperty(value = "进度")
    @TableField("schedule")
    private Double schedule;

    //@ApiModelProperty(value = "组织id")
    @TableField("group_id")
    private String groupId;

    //@ApiModelProperty(value = "是否私有 1:是 0:否")
    @TableField("is_private")
    private Boolean is_private;

    //@ApiModelProperty(value = "是否开启项目前缀 1:是 0:否")
    @TableField("open_prefix")
    private Boolean openPrefix;

    //@ApiModelProperty(value = "是否归档 1:是 0:否")
    @TableField("archive")
    private Boolean archive;

    //@ApiModelProperty(value = "归档时间")
    @TableField("archive_time")
    private String archiveTime;

    //@ApiModelProperty(value = "项目开始日期")
    @TableField("begin_time")
    private String beginTime;

    //@ApiModelProperty(value = "项目截止日期")
    @TableField("end_time")
    private String endTime;

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