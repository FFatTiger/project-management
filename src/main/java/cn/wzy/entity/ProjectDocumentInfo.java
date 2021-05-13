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
    private Integer id;

    //@ApiModelProperty(value = "相对路径")
    @TableField("path_name")
    private String pathName;

    //@ApiModelProperty(value = "名称")
    @TableField("title")
    private String title;


    //@ApiModelProperty(value = "文件大小")
    @TableField("size")
    private Long size;

    //@ApiModelProperty(value = "组织id")
    @TableField("upload_user_id")
    private Integer uploadUserId;

    //@ApiModelProperty(value = "组织id")
    @TableField("group_id")
    private Integer groupId;

    //@ApiModelProperty(value = "所属项目id")
    @TableField("project_id")
    private Integer projectId;

    //@ApiModelProperty(value = "下载次数")
    @TableField("downloads")
    private Integer downloads;

    @TableField("audit")
    private Boolean audit;

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
    
    private Integer version;

    //@ApiModelProperty(value = "创建人")
    @TableField(value = "created_by", fill = FieldFill.INSERT)
    private String createdBy;

    //@ApiModelProperty(value = "创建时间")
    @TableField("created_time")
    @JSONField(format = "yyyy-MM-dd")
    private Date createdTime;

    //@ApiModelProperty(value = "更新人")
    @TableField(value = "last_modified_by", fill = FieldFill.INSERT_UPDATE)
    private String lastModifiedBy;

    //@ApiModelProperty(value = "更新时间")
    @TableField("last_modified_time")
    @JSONField(format = "yyyy-MM-dd")
    private Date lastModifiedTime;

    public ProjectDocumentInfo incrementDownloads() {
        if (downloads != null) {
            this.downloads++;
        } else {
            downloads = 0;
        }
        return this;
    }

}
