package cn.wzy.vo;

import lombok.Data;
import lombok.experimental.Accessors;

import java.util.Date;

/**
 * @author tiger
 * @date 2021/5/13
 */
@Data
@Accessors(chain = true)
public class ProjectMemberVO {

    private Integer userId;

    private Integer id;

    private String userName;

    private Date joinTime;

    private Integer roleId;

    private String authorize;
}
