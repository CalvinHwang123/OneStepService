package oss.handler;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import oss.biz.BusiManageBiz;
import oss.biz.PortalManageBiz;


/*
 * 后端门户管理Handler
 */

@Controller
@RequestMapping("/PortalManage")
public class PortalManageHandler {
	
	@Resource
	private PortalManageBiz portalManageBizImpl;
	
	

}
