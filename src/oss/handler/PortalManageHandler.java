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

import oss.bean.Condition;
import oss.bean.Dynamics;
import oss.bean.Information;
import oss.bean.Links;
import oss.bean.UserStory;
import oss.bean.Violations;
import oss.biz.PortalManageBiz;
/*
 * 后端门户管理Handler
 */
import oss.util.DateUtil;

@Controller
@RequestMapping("/PortalManage")
public class PortalManageHandler {

	@Resource
	private PortalManageBiz portalManageBizImpl;

	// 后端违规列表请求 by hlq 2018-06-14
	@RequestMapping("/violationsList.action")
	public ModelAndView violationsList(HttpServletRequest req, 
			@RequestParam(value = "pageSize", required = true, defaultValue = "5") int pageSize, 
		@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum, 
		Condition condition) {
		System.out.println("portalManageBizImpl=" + portalManageBizImpl);
		// 在这里调用PageHelper类的静态方法，后面要紧跟Mapper查询数据库的方法
		PageHelper.startPage(pageNum, pageSize);
		List<Violations> violationsList = portalManageBizImpl.violationsList(condition);
		// 把查询结果，封装成pageInfo对象，该对象中包含了该数据库中的许多参数，包括记录总条数等
		PageInfo<Violations> pageInfo = new PageInfo<>(violationsList, pageSize);
		System.out.println(pageInfo.getTotal());
		req.setAttribute("pageInfo", pageInfo);
		ModelAndView mav = new ModelAndView("violationsList");
		return mav;
	}
	
	// 前端曝光台请求 by hlq 2018-06-16 13:36
	@RequestMapping("/foreViolationsList.action")
	public ModelAndView foreViolationsList(HttpServletRequest req, 
			@RequestParam(value = "pageSize", required = true, defaultValue = "10") int pageSize, 
		@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum) {
		
		PageHelper.startPage(pageNum, pageSize);
		List<Violations> violationsList = portalManageBizImpl.listViolationsDesc();
		// 把查询结果，封装成pageInfo对象，该对象中包含了该数据库中的许多参数，包括记录总条数等
		PageInfo<Violations> pageInfo = new PageInfo<>(violationsList, pageSize);
		System.out.println(pageInfo.getTotal());
		req.setAttribute("pageInfo", pageInfo);
		
//		List<Violations> map = portalManageBizImpl.listViolationsGroupByWhy();
//		System.out.println("map 长度：" + map.size());
		List<Violations> stickList = portalManageBizImpl.listStickViolations();
		System.out.println("stickList 长度：" + stickList.size());
		req.setAttribute("stickList", stickList);
		
		ModelAndView mav = new ModelAndView("foreViolations");
		return mav;
	}
	
	// 违规记录删除 by hlq 2018-06-14 21:58 返回json
	@RequestMapping(value = "/violationsDelete.action", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	public @ResponseBody String violationsDelete(@RequestBody List<Violations> violationsList) {
		System.out.println("violationsID list size=" + violationsList.size());
		boolean ret = portalManageBizImpl.violationsDelete(violationsList);
		if (ret) {
			return "删除成功";
		} else {
			return "删除失败";
		}
	}
	
	// 违规记录新增 by hlq 2018-06-15 11:36 返回json
	@RequestMapping(value = "/violationsInsert.action", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	public @ResponseBody String violationsInsert(@RequestBody Violations violations) {
		violations.setViolationsTime(DateUtil.getCurrentDate());
		boolean ret = portalManageBizImpl.insertViolations(violations);
		if (ret) {
			return "新增成功";
		} else {
			return "新增失败";
		}
	}
	
	// 违规记录修改 by hlq 2018-06-15 11:36 返回json
	@RequestMapping(value = "/violationsUpdate.action", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	public @ResponseBody String violationsUpdate(@RequestBody Violations violations) {
		System.out.println(violations);
		boolean ret = portalManageBizImpl.updateViolationsByID(violations);
		if (ret) {
			return "修改成功";
		} else {
			return "修改失败";
		}
	}
	
	// 违规记录置顶 by hlq 2018-06-16 21:01 返回json
	@RequestMapping(value = "/violationsStickTimeUpdate.action", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	public @ResponseBody String violationsStickTimeUpdate(@RequestBody Violations violations) {
		System.out.println(violations);
		// 准备置顶(注意写法避免空指针)
		if (!"1970-01-01 00:00:00".equals(violations.getStickTime())) {
			// 设置当前时间为置顶时间
			violations.setStickTime(DateUtil.getCurrentDate());
		}
		boolean ret = portalManageBizImpl.stickUpdateViolationsByID(violations);
		if (ret) {
			return "操作成功";
		} else {
			return "操作失败";
		}
	}
	
	private Links links;

	@RequestMapping("/linksList.action")
	public ModelAndView linksList(HttpServletRequest req,
			@RequestParam(value = "pageSize", required = true, defaultValue = "5")int pageSize,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1")int pageNum,Condition condition) {
		PageHelper.startPage(pageNum, pageSize);
		List<Links> linksList = portalManageBizImpl.listLinks(condition);
		PageInfo pageInfo = new PageInfo<>(linksList, pageSize);
		System.out.println(pageInfo.getTotal());
		req.setAttribute("pageInfo", pageInfo);
		ModelAndView mav = new ModelAndView("LinksList");
		return mav;
	}

	@RequestMapping("/addlinks.action")
	public @ResponseBody String Addlinks(HttpServletRequest req, @RequestBody Links links) {
		System.out.println(links.getLinksid());
		int addlinks = portalManageBizImpl.AddLinks(links);
		return "success";
	}

	@RequestMapping(value = "/deleteById.action", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	public @ResponseBody String deleteById(HttpServletRequest req,
			@RequestParam(value = "linksid", required = true, defaultValue = "empty") Long linksid) {
		int delete = portalManageBizImpl.deleteById(linksid);
		// ModelAndView mav = new ModelAndView("redirect:linksList.action");
		return "success";
	}

	@RequestMapping("/updateById.action")
	public @ResponseBody  String updateById(HttpServletRequest req,@RequestBody Links links) {
		int up = portalManageBizImpl.updateById(links);
		return "success";
	}

	// 雇主故事列表 黄绍鹏6-15 15：13
	@RequestMapping("/userStoryList.action")
	public ModelAndView userStoryList(HttpServletRequest req,
			@RequestParam(value = "pageSize", required = true, defaultValue = "5")int pageSize,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1")int pageNum,
			Condition condition
			) {
		System.out.println("portalManageBizImpl=" + portalManageBizImpl);
		// 在这里调用PageHelper类的静态方法，后面要紧跟Mapper查询数据库的方法
		PageHelper.startPage(pageNum, pageSize);
		List<UserStory> userStoryList = portalManageBizImpl.userStoryList(condition);
		// 把查询结果，封装成pageInfo对象，该对象中包含了该数据库中的许多参数，包括记录总条数等
		PageInfo pageInfo = new PageInfo<>(userStoryList, pageSize);
		System.out.println(pageInfo.getTotal());
		req.setAttribute("pageInfo", pageInfo);
		req.setAttribute("condition", condition);
		ModelAndView mav = new ModelAndView("background/userStory");
		return mav;
	}

	// 修改雇主故事列表 黄绍鹏6-16 10:43
	@RequestMapping("/updateStory.action")
	public @ResponseBody String updateStory(HttpServletRequest req,@RequestBody UserStory userStory) {
		portalManageBizImpl.updateStory(userStory);
		return "success";
	}

	// 批量删除雇主故事 黄绍鹏 6-14 15:57(修改)
	@RequestMapping("/deleteStory.action")
	public @ResponseBody String deleteStory(HttpServletRequest req, @RequestBody List<UserStory> storyList) {
		portalManageBizImpl.deleteUserStorys(storyList);
		return "success";
	}

	// 增加雇主故事 黄绍鹏 6-14 21：32
	@RequestMapping("/addStory.action")
	public @ResponseBody String addStory(HttpServletRequest req, @RequestBody UserStory userStory) {
		userStory.setStoryTime(DateUtil.getCurrentDate());
		userStory.setStickTime(DateUtil.getCurrentDate());
		portalManageBizImpl.addUserStory(userStory);
		return "success";
	}

	// 动态列表 王伟杰 6-13
	@RequestMapping("/listDyna.action")
	public ModelAndView ListDyna(HttpServletRequest req,
			@RequestParam(value = "pageSize", required = true, defaultValue = "5")int pageSize,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1")int pageNum,Condition condition) {
	
		PageHelper.startPage(pageNum, pageSize);
		List<Dynamics> ListDyna = portalManageBizImpl.ListDyna(condition);
		PageInfo pageInfo = new PageInfo<>(ListDyna, pageSize);
		System.out.println(pageInfo.getTotal());
		req.setAttribute("pageInfo", pageInfo);
		ModelAndView mav = new ModelAndView("DynaList");
		return mav;
	}
	
	//增加动态
	@RequestMapping("/addDyna.action")
	public @ResponseBody String AddDyna(HttpServletRequest req, @RequestBody Dynamics dynamics) {
		int addlinks = portalManageBizImpl.AddDyna(dynamics);
		return "success";
	}
	
	//删除动态  王伟杰  6-13
	@RequestMapping(value = "/deleteDynaById.action", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	public @ResponseBody String deleteDynaById(HttpServletRequest req,
			@RequestParam(value = "dynamicId", required = true, defaultValue = "empty") Long dynamicId) {
		int delete = portalManageBizImpl.deleteDynaById(dynamicId);
		return "success";
	}
	
	//修改动态
	@RequestMapping("/updateDynaById.action")
	public @ResponseBody  String updateDynaById(HttpServletRequest req,@RequestBody Dynamics dynamics) {
	
		int up = portalManageBizImpl.updateDynaById(dynamics);
		return "success";
	}
	//资讯列表   王伟杰  6-13
	@RequestMapping("/listInfo.action")
	public ModelAndView ListInfo(HttpServletRequest req,
			@RequestParam(value = "pageSize", required = true, defaultValue = "5")int pageSize,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1")int pageNum,Condition condition) {
		PageHelper.startPage(pageNum, pageSize);
		List<Information> ListInfo = portalManageBizImpl.ListInfo(condition);
		PageInfo pageInfo = new PageInfo<>(ListInfo, pageSize);
		System.out.println(pageInfo.getTotal());
		req.setAttribute("pageInfo", pageInfo);
		ModelAndView mav = new ModelAndView("InfoList");
		return mav;
	}

	// 删除资讯 王伟杰 6-13
	@RequestMapping(value = "/deleteInfoById.action", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	public @ResponseBody String deleteInfoById(HttpServletRequest req,
			@RequestParam(value = "InformationId", required = true, defaultValue = "empty") Long InformationId) {
		int delete = portalManageBizImpl.deleteInfoById(InformationId);
		return "success";
	}
	
	//修改资讯
	@RequestMapping("/updateInfoById.action")
	public @ResponseBody  String updateInfoById(HttpServletRequest req,@RequestBody Information information) {
	System.out.println(information);
		int up = portalManageBizImpl.updateInfoById(information);
		return "success";
	}
	
	//增加资讯
		@RequestMapping("/addInfo.action")
		public @ResponseBody  String AddInfo(HttpServletRequest req, @RequestBody Information information) {
			int addlinks = portalManageBizImpl.AddInfo(information);
			return "success";
		}

}
