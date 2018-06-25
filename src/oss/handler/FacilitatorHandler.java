package oss.handler;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import oss.biz.FacilitatorBiz;


/*
 * 服务商Handler
 */
@Controller
@RequestMapping("/Facilitator")
public class FacilitatorHandler {
	
	@Resource
	private FacilitatorBiz facilitatorBizImpl;
	
	// 发布作品前显示一级二级分类名称 hlq 2018-06-25 14:59
	@RequestMapping("/worksPublishClassList.action")
	public ModelAndView worksPublishClassList(HttpServletRequest req) {
		System.out.println("facilitatorBizImpl=" + facilitatorBizImpl);
		Map<String, List<Map<Long, String>>> firstClassMap = facilitatorBizImpl.listClassMap();
		String classJson = new Gson().toJson(firstClassMap);
		System.out.println("classJson=" + classJson);
		req.setAttribute("classJson", classJson);
		ModelAndView mav = new ModelAndView("foreground/publishWorks");
		return mav;
	}

}
