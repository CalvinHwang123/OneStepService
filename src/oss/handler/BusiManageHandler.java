package oss.handler;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import oss.biz.BusiManageBiz;


/*
 * 业务管理Handler
 */

@Controller
@RequestMapping("/BusiManage")
public class BusiManageHandler {
	
	@Resource
	private BusiManageBiz busiManageBizImpl;
	
	

}
