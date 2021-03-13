package cn.wzy.service;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.service.IService;
import lombok.SneakyThrows;

import java.util.Collection;
import java.util.Map;
import java.util.function.Function;

public interface IExtendedService<T> extends IService<T> {

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

        throw new IllegalAccessException("方法未实现");
    }
}
