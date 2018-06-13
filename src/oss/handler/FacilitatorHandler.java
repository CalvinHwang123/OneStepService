package oss.handler;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import oss.biz.FacilitatorBiz;


/*
 * 服务商Handler
 */
@Controller
@RequestMapping("/Facilitator")
public class FacilitatorHandler {
	
	@Resource
	private FacilitatorBiz facilitatorBizImpl;
	
	

}
