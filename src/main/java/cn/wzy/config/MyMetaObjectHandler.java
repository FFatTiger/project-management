//package cn.wzy.config;
//
//import cn.wzy.entity.User;
//import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
//import lombok.extern.slf4j.Slf4j;
//import org.apache.ibatis.reflection.MetaObject;
//import org.apache.shiro.SecurityUtils;
//import org.springframework.stereotype.Component;
//
//import java.util.Date;
//
///**
// * @author wzy
// * @date 2021/4/22
// */
//@Slf4j
//@Component
//public class MyMetaObjectHandler implements MetaObjectHandler {
//
//    @Override
//    public void insertFill(MetaObject metaObject) {
//        log.info("start insert fill ....");
//        this.strictInsertFill(metaObject, "created_by", String.class, getUserName());
//        this.strictInsertFill(metaObject, "last_modified_by", String.class, getUserName());
//    }
//
//    @Override
//    public void updateFill(MetaObject metaObject) {
//        log.info("start update fill ....");
//        this.strictUpdateFill(metaObject, "last_modified_by", String.class, getUserName());
//
//    }
//
//    private String getUserName() {
//        return ((User) SecurityUtils.getSubject().getPrincipal()).getUserName();
//    }
//}