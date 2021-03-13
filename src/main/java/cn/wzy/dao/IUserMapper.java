package cn.wzy.dao;

import cn.wzy.entity.Pager;
import cn.wzy.entity.User;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface IUserMapper extends BaseMapper<User>{


    public Integer delUserById(@Param("id") Integer id);

    public Integer updateUserById(Map<String,Object> map);

    public Integer saveUserById(Map<String,Object> map);

    public User getUserById(Integer id);

    public List<User> getAllUserByPage(@Param("name") String name,@Param("page") Pager pager);

    public User getUserByName(String userName);

    public User getUserByUserCode(String userCode);

    public Integer getCount(@Param("name") String name);

}
