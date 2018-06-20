package oss.handler;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;

import oss.bean.Violations;
import oss.bean.Violations2;
import oss.biz.PortalBiz;


/*
 * 门户Handler
 */

@Controller
@RequestMapping("/Portal")
public class PortalHandler {
	
	@Resource
	private PortalBiz portalBizImpl;
	
	// 前端曝光台请求 by hlq 2018-06-16 13:36
		@RequestMapping("/foreViolationsList.action")
		public ModelAndView foreViolationsList(HttpServletRequest req, 
				@RequestParam(value = "pageSize", required = true, defaultValue = "10") int pageSize, 
			@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum) {
			// 雇主违规列表
			PageHelper.startPage(pageNum, pageSize);
			List<Violations> violationsList = portalBizImpl.listViolationsDesc(1);
			// 把查询结果，封装成pageInfo对象，该对象中包含了该数据库中的许多参数，包括记录总条数等
			PageInfo<Violations> pageInfo = new PageInfo<>(violationsList, pageSize);
			System.out.println(pageInfo.getTotal());
			req.setAttribute("pageInfo", pageInfo);
			// 服务商违规列表
			PageHelper.startPage(pageNum, pageSize);
			List<Violations> violationsList2 = portalBizImpl.listViolationsDesc(2);
			// 把查询结果，封装成pageInfo对象，该对象中包含了该数据库中的许多参数，包括记录总条数等
			PageInfo<Violations> pageInfo2 = new PageInfo<>(violationsList2, pageSize);
			System.out.println(pageInfo2.getTotal());
			req.setAttribute("pageInfo2", pageInfo2);
			// 雇主处罚原因列表
			List<Violations2> map = portalBizImpl.listViolationsGroupByWhy(1);
			System.out.println("map 长度：" + map.size());
			String vioWhyList =  new Gson().toJson(map);
			req.setAttribute("vioWhyList", vioWhyList);
			// 服务商处罚原因列表
			List<Violations2> map2 = portalBizImpl.listViolationsGroupByWhy(2);
			System.out.println("map 长度：" + map2.size());
			String vioWhyList2 =  new Gson().toJson(map2);
			req.setAttribute("vioWhyList2", vioWhyList2);
			
			List<Violations> stickList = portalBizImpl.listStickViolations(1);
			System.out.println("stickList 长度：" + stickList.size());
			req.setAttribute("stickList", stickList);
			
			List<Violations> stickList2 = portalBizImpl.listStickViolations(2);
			System.out.println("stickList2 长度：" + stickList2.size());
			req.setAttribute("stickList2", stickList2);
			
			ModelAndView mav = new ModelAndView("foreViolations");
			return mav;
		}
		
		// 前端ajax请求所有处罚翻页 by hlq 2018-06-17 12:02 返回json
		@RequestMapping(value = "/foreViolationsPage.action", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
		public @ResponseBody PageInfo<Violations> foreViolationsPage(@RequestBody Violations pageNum) {
			// 每页默认为10条数据
			PageHelper.startPage(pageNum.getViolationsID().intValue(), 10);
			// 获取用户类型
			int userType = pageNum.getUsers().getUserType().intValue();
			List<Violations> violationsList = portalBizImpl.listViolationsDesc(userType);
			// 把查询结果，封装成pageInfo对象，该对象中包含了该数据库中的许多参数，包括记录总条数等
			PageInfo<Violations> pageInfo = new PageInfo<>(violationsList, 10);
			return pageInfo;
		}

}
