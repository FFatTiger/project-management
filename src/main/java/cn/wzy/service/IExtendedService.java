package cn.wzy.service;

import cn.wzy.dao.IGroupMapper;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.service.IService;
import lombok.SneakyThrows;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.util.ClassUtils;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.context.support.XmlWebApplicationContext;

import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.function.Function;
import java.util.regex.Pattern;

public interface IExtendedService<T> extends IService<T> {
    Pattern IS_START_WITH_TW_OR_MORE = Pattern.compile("^[A-Z][A-Z][A-Z]*");

    @SneakyThrows
    @Override
    default boolean saveBatch(Collection<T> entityList, int batchSize) {
        throw new IllegalAccessException("方法未实现");
    }

    @SneakyThrows
    @Override
    default boolean saveOrUpdateBatch(Collection<T> entityList, int batchSize) {
        throw new IllegalAccessException("方法未实现");
    }

    @SneakyThrows
    @Override
    default boolean updateBatchById(Collection<T> entityList, int batchSize) {
        throw new IllegalAccessException("方法未实现");
    }

    @SneakyThrows
    @Override
    default boolean saveOrUpdate(T entity) {
        throw new IllegalAccessException("方法未实现");
    }

    @SneakyThrows
    @Override
    default T getOne(Wrapper<T> queryWrapper, boolean throwEx) {
        throw new IllegalAccessException("方法未实现");
    }

    @SneakyThrows
    @Override
    default Map<String, Object> getMap(Wrapper<T> queryWrapper) {
        throw new IllegalAccessException("方法未实现");
    }

    @SneakyThrows
    @Override
    default <V> V getObj(Wrapper<T> queryWrapper, Function<? super Object, V> mapper) {
        throw new IllegalAccessException("方法未实现");
    }

    @SneakyThrows
    @Override
    default BaseMapper<T> getBaseMapper() {
        String entityName = this.getClass().getSimpleName().split("Service")[0];


        String mapperNameI = "I" + entityName + "Mapper";

        boolean isTwoOrMoreBegin = IS_START_WITH_TW_OR_MORE.matcher(entityName).find();

        String mapperNameNoI;
        if (!isTwoOrMoreBegin) {
            mapperNameNoI = entityName.toLowerCase() + "Mapper";
        } else {
            mapperNameNoI = entityName+ "Mapper";
        }

        Object bean = null;
        WebApplicationContext wac = null;
        try {
            wac = ContextLoader.getCurrentWebApplicationContext();
            bean = wac.getBean(mapperNameI);
        } catch (BeansException e) {
            try {
                bean = wac.getBean(mapperNameNoI);
            } catch (BeansException beansException) {
                beansException.printStackTrace();
            }
        }


        return (BaseMapper<T>) bean;
    }
}
