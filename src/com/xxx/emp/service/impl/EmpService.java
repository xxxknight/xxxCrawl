package com.xxx.emp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xxx.emp.bean.EmpBean;
import com.xxx.emp.dao.EmpDao;
import com.xxx.emp.service.IEmpService;

@Service("empService")
public class EmpService implements IEmpService {

	private EmpDao empDao;

	public EmpDao getEmpDao() {
		return empDao;
	}

	@Autowired
	public void setEmpDao(EmpDao empDao) {
		this.empDao = empDao;
	}

	public List<EmpBean> doGetEmpList() {
		return empDao.doGetEmpList();
	}

	public int doInsertEmp(EmpBean empBean) {
		return empDao.doInsertEmp(empBean);
	}

	public int doInsertEmpSelective(EmpBean empBean) {
		return empDao.doInsertEmpSelective(empBean);
	}

	public int doDeleteEmpById(Integer empId) {
		return empDao.doDeleteEmpById(empId);
	}

	public EmpBean doGetEmpById(Integer empId) {
		return empDao.doGetEmpById(empId);
	}

	public int doUpdateEmpById(EmpBean empBean) {
		return empDao.doUpdateEmpById(empBean);
	}

}
