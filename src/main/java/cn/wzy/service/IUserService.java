package cn.wzy.service;

import cn.wzy.entity.Pager;
import cn.wzy.entity.User;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;
import java.util.Map;

public interface IUserService extends IService<User> {

    public String delUserById( Integer id);

    public String updateUserById(User user);

    public String saveUserById(User user);

    public User getUserById(Integer id);

    public List<User> getAllUserByPage(String name, Pager pager);

    public User getUserByName(String userName);

    public User getUserByUserCode(String userCode);

    public Map<String,Object> toMap(User user);

    List<User> getNotInProjectUser(Integer id);
}
