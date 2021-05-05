package cn.wzy.service;

import cn.wzy.entity.ProjectDocumentInfo;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * @author wzy
 * @date 2021/3/29
 */
public interface IProjectDocumentInfoService extends IService<ProjectDocumentInfo> {
    int insertOne(ProjectDocumentInfo projectDocumentInfo);

    List<ProjectDocumentInfo> getDocumentInfoByUserIdAndCondition(Integer projectId, String searchCondition);
}
