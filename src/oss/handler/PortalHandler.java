package oss.handler;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import oss.biz.PortalBiz;


/*
 * 门户Handler
 */

@Controller
@RequestMapping("/Portal")
public class PortalHandler {
	
	@Resource
	private PortalBiz portalBizImpl;
	
	

}
