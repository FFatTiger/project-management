package cn.wzy.service;

import cn.wzy.entity.ProjectInfo;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * @author wzy
 * @date 2021/3/29
 */
public interface IProjectInfoService extends IService<ProjectInfo> {

    /**
     * 获取用户加入的项目的信息
     * @param id
     * @return
     */
    List<ProjectInfo> getByUserId(Long id);
}
