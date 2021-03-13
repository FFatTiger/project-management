package cn.wzy.service;

import cn.wzy.entity.Bill;
import cn.wzy.entity.Pager;

import java.util.List;
import java.util.Map;

public interface IBillService {

    public String delBillById(Integer id);

    public String saveBill(Bill bill);

    public String updateBill(Bill bill);

    public Bill getBillByBillCode(String billCode);

    public Bill getBillById(Integer id);

    public Bill getBillByName(String productName);

    public List<Bill> getAllBillByPage(Pager pager,Integer providerId,Integer isPayment, String productName);

    public Map<String,Object> toMap(Bill bill);


}
