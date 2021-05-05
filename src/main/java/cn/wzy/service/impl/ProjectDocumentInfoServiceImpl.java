package cn.wzy.service.impl;

import cn.wzy.dao.IProjectDocumentInfoMapper;
import cn.wzy.entity.ProjectDocumentInfo;
import cn.wzy.service.IProjectDocumentInfoService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author wzy
 * @date 2021/3/29
 */
@Service
@RequiredArgsConstructor
public class ProjectDocumentInfoServiceImpl extends ServiceImpl<IProjectDocumentInfoMapper, ProjectDocumentInfo> implements IProjectDocumentInfoService {
    @Override
    public int insertOne(ProjectDocumentInfo projectDocumentInfo) {
        return getBaseMapper().insert(projectDocumentInfo);
    }

    @Override
    public List<ProjectDocumentInfo> getDocumentInfoByUserIdAndCondition(Integer projectId, String searchCondition) {
        return getBaseMapper().getDocumentInfoByProjectIdAndCondition(projectId, searchCondition);
    }
}
