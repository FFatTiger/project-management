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
 * 项目管理-文件表
 * </p>
 *
 * @author wzy
 * @since 2021-03-25
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("project_document_info")
//@ApiModel(value="ProjectDocumentInfo对象", description="项目管理-文件表")
public class ProjectDocumentInfo implements Serializable {


    //@ApiModelProperty(value = "id")
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    //@ApiModelProperty(value = "相对路径")
    @TableField("path_name")
    private String pathName;

    //@ApiModelProperty(value = "名称")
    @TableField("title")
    private String title;


    //@ApiModelProperty(value = "文件大小")
    @TableField("size")
    private Integer size;

    //@ApiModelProperty(value = "组织id")
    @TableField("upload_user_id")
    private Long uploadUserId;

    //@ApiModelProperty(value = "组织id")
    @TableField("group_id")
    private Long groupId;

    //@ApiModelProperty(value = "所属项目id")
    @TableField("project_id")
    private Long projectId;

    //@ApiModelProperty(value = "下载次数")
    @TableField("downloads")
    private Integer downloads;

    //@ApiModelProperty(value = "完整地址")
    @TableField("file_url")
    private String fileUrl;

    //@ApiModelProperty(value = "文件类型")
    @TableField("file_type")
    private String fileType;

    //@ApiModelProperty(value = "逻辑删除标志 1：已删除， 0：未删除，默认0")
    @TableField("is_delete")
    @TableLogic
    private Boolean deleted;

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
