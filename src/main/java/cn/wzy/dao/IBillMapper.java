package cn.wzy.dao;

import cn.wzy.entity.Bill;
import cn.wzy.entity.Pager;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface IBillMapper {

    public Integer delBillById(Integer id);

    public Integer saveBill(Map<String,Object> map);

    public Integer updateBill(Map<String,Object> map);

    public Bill getBillByBillCode(String billCode);

    public Bill getBillById(Integer id);

    public Bill getBillByName(String productName);

    public List<Bill> getAllBillByPage(@Param("pager") Pager pager,@Param("providerId") Integer providerId, @Param("isPayment") Integer isPayment,@Param("productName") String productName);

    public Integer getCount(@Param("providerId") Integer providerId, @Param("isPayment") Integer isPayment,@Param("productName") String productName);
}
