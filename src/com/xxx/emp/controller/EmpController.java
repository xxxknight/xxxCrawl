package com.xxx.emp.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.xxx.emp.bean.EmpBean;
import com.xxx.emp.service.IEmpService;

@Controller
@RequestMapping("/emp/")
public class EmpController {

	private IEmpService empService;

	public IEmpService getEmpService() {
		return empService;
	}

	@Autowired
	public void setEmpService(IEmpService empService) {
		this.empService = empService;
	}

	@RequestMapping(value = "doInsertEmp", method = RequestMethod.PUT)
	public ModelAndView doInsertEmp(EmpBean empBean) {
		System.out.println("put");
		System.out.println(empBean);
		int rc = empService.doInsertEmp(empBean);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		mv.addObject("stack", "doInsertEmp->" + rc);

		return mv;
	}

	@RequestMapping("doInsertEmpSelective")
	public ModelAndView doInsertEmpSelective(@ModelAttribute EmpBean empBean) {

		int rc = empService.doInsertEmpSelective(empBean);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		mv.addObject("stack", "doInsertEmpSelective->" + rc);

		return mv;

	}

	@RequestMapping(value = "doDeleteEmpById/{empId}", method = RequestMethod.DELETE)
	@ResponseBody
	public String doDeleteEmpById(@PathVariable String empId) {
		System.out.println("delete");
		empService.doDeleteEmpById(Integer.parseInt(empId));
		// List<EmpBean> empList = empService.doGetEmpList();
		// ModelAndView mv = new ModelAndView();
		// mv.setViewName("view/emp/emplist");
		// mv.addObject("modelList", empList);
		// return mv;
		Gson gson = new Gson();

		HashMap<String, String> hs = new HashMap<String, String>();
		hs.put("name", "x");
		String json = gson.toJson(hs);
		return json;
	}

	@RequestMapping("doGetEmpList")
	public ModelAndView doGetEmpList() {
		List<EmpBean> empList = empService.doGetEmpList();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("view/emp/emplist");
		mv.addObject("modelList", empList);
		return mv;
	}

	@RequestMapping(value = "doGetEmpById/{empId}", method = RequestMethod.GET)
	public ModelAndView doGetEmpById(@PathVariable String empId) {
		ModelAndView mv = new ModelAndView();
		EmpBean empBean = empService.doGetEmpById(Integer.parseInt(empId));
		mv.setViewName("view/emp/empupdate");
		mv.addObject("model", empBean);
		return mv;
	}

	@RequestMapping(value = "doUpdateEmpById", method = RequestMethod.POST)
	public ModelAndView doGetEmpById(EmpBean empBean) {
		System.out.println(empBean);
		empService.doUpdateEmpById(empBean);
		List<EmpBean> empList = empService.doGetEmpList();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("view/emp/emplist");
		mv.addObject("modelList", empList);
		return mv;
	}
}
