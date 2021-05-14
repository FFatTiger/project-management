package cn.wzy.entity;

import lombok.Data;
import lombok.experimental.Accessors;

/**
 * @author tiger
 * @date 2021/5/14
 */
@Data
@Accessors(chain = true)
public class ProjectPermission {

    private Integer id;

    private Integer projectId;

    private Integer userId;

    private Integer roleId;
}
