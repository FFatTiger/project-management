package cn.wzy.service.impl;

import cn.wzy.dao.IProjectInfoMapper;
import cn.wzy.entity.ProjectInfo;
import cn.wzy.service.IProjectInfoService;
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
public class ProjectInfoServiceImpl extends ServiceImpl<IProjectInfoMapper, ProjectInfo> implements IProjectInfoService {

    private final IProjectInfoMapper projectInfoMapper;


    @Override
    public List<ProjectInfo> getByUserId(Long id) {
        return projectInfoMapper.getByUserId(id);
    }
}
