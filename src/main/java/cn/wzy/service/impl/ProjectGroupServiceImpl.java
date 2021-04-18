package cn.wzy.service.impl;

import cn.wzy.dao.IProjectDocumentInfoMapper;
import cn.wzy.dao.IProjectGroupMapper;
import cn.wzy.entity.ProjectDocumentInfo;
import cn.wzy.entity.ProjectGroup;
import cn.wzy.service.IProjectDocumentInfoService;
import cn.wzy.service.IProjectGroupService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * @author wzy
 * @date 2021/3/29
 */
@Service
public class ProjectGroupServiceImpl extends ServiceImpl<IProjectGroupMapper, ProjectGroup> implements IProjectGroupService {
}
