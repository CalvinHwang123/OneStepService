package oss.handler;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import oss.biz.SystemManegeBiz;


/*
 * 系统管理Handler
 */

@Controller
@RequestMapping("/SystemManage")
public class SystemManageHandler {
	
	@Resource
	private SystemManegeBiz systemManegeBizImpl;
	
	

}
