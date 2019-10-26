package com.yang.erp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DepartmentController {
	
	@RequestMapping("/findDeptById/{id}")
	public String findDeptById(@PathVariable("id") int id,Model model){
		
		System.out.println(id);
		
		
		return "updateDepartment";
	}
	
}
