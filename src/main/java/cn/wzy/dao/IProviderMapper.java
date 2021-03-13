package cn.wzy.dao;

import cn.wzy.entity.Pager;
import cn.wzy.entity.Provider;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface IProviderMapper {

    public Provider getProviderById(Integer id);

    public Provider getProviderByProCode(String proCode);

    public Provider getProviderByProName(String proName);

    public List<Provider> getAllProviderByPage(@Param("proName") String proName,@Param("pager") Pager pager);

    public Integer getCount(@Param("proName") String proName);

    public Integer delProviderById(Integer id);

    public Integer updateProvider(Map<String,Object> map);

    public Integer saveProvider(Map<String,Object> map);

}
