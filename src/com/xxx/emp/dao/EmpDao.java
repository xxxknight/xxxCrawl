package com.xxx.emp.dao;

import java.util.List;

import com.xxx.emp.bean.EmpBean;

public interface EmpDao {

	int doInsertEmp(EmpBean empBean);
	
	int doInsertEmpSelective(EmpBean empBean);
	
	int doDeleteEmpById(Integer empId);
	
	List<EmpBean> doGetEmpList();
	
	EmpBean doGetEmpById(Integer empId);
	
	int doUpdateEmpById(EmpBean empBean);
}
