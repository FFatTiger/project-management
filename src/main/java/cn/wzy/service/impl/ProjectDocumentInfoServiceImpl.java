package cn.wzy.service.impl;

import cn.wzy.dao.IProjectDocumentInfoMapper;
import cn.wzy.entity.ProjectDocumentInfo;
import cn.wzy.service.IProjectDocumentInfoService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * @author wzy
 * @date 2021/3/29
 */
@Service
public class ProjectDocumentInfoServiceImpl extends ServiceImpl<IProjectDocumentInfoMapper, ProjectDocumentInfo> implements IProjectDocumentInfoService {
}
