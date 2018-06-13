package oss.handler;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import oss.biz.EmployerBiz;


/*
 * 雇主Handler
 */

@Controller
@RequestMapping("/Employer")
public class EmployerHandler {
	
	@Resource
	private EmployerBiz employerBizImpl;
	
	

}
