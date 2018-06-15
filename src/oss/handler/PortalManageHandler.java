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

	// by hlq 2018-06-14
	@RequestMapping("/violationssList.action")
	public ModelAndView violationssList(HttpServletRequest req) {
		System.out.println("portalManageBizImpl=" + portalManageBizImpl);
		// int pageNum=1;//当前显示的页码
		// int pageSize=2;//每一页显示的数据条数
		// 在这里调用PageHelper类的静态方法，后面要紧跟Mapper查询数据库的方法
		int pageNum = 3;// 当前显示的页码
		int pageSize = 2;// 每一页显示的数据条数
		// 在这里调用PageHelper类的静态方法，后面要紧跟Mapper查询数据库的方法
		PageHelper.startPage(pageNum, pageSize);
		List<Violations> violationsList = portalManageBizImpl.violationsList();
		// 把查询结果，封装成pageInfo对象，该对象中包含了该数据库中的许多参数，包括记录总条数等
		PageInfo<Violations> pageInfo = new PageInfo<>(violationsList, pageSize);
		System.out.println(pageInfo.getTotal());
		req.setAttribute("pageInfo", pageInfo);
		ModelAndView mav = new ModelAndView("violationsList");
		return mav;
	}

	private Links links;

	// 违规记录删除 by hlq 2018-06-14 21:58 返回json
	@RequestMapping(value = "/violationsDelete.action", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	public @ResponseBody String violationsDelete(@RequestBody Violations violations) {
		System.out.println("violationsID=" + violations.getViolationsID());
		boolean ret = portalManageBizImpl.violationsDelete(violations.getViolationsID());
		if (ret) {
			return "删除成功";
		} else {
			return "删除失败";
		}
	}

	@RequestMapping("/linksList.action")
	public ModelAndView linksList(HttpServletRequest req) {
		List<Links> linksList = portalManageBizImpl.listLinks();
		req.setAttribute("linksList", linksList);
		ModelAndView mav = new ModelAndView("LinksList");
		return mav;
	}

	@RequestMapping("/addlinks.action")
	public ModelAndView Addlinks(HttpServletRequest req, Links links) {
		System.out.println(links);
		int addlinks = portalManageBizImpl.AddLinks(links);
		ModelAndView mav = new ModelAndView("redirect:linksList.action");
		return mav;
	}

	@RequestMapping(value = "/deleteById.action", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	public @ResponseBody String deleteById(HttpServletRequest req,
			@RequestParam(value = "linksid", required = true, defaultValue = "empty") Long linksid) {
		System.out.println(linksid);
		int delete = portalManageBizImpl.deleteById(linksid);
		// ModelAndView mav = new ModelAndView("redirect:linksList.action");
		return "success";
	}

	@RequestMapping("/updateById.action")
	public ModelAndView updateById(HttpServletRequest req, Links links) {
		links.setLinksurl("www.314464654");
		links.setLinksid(8l);
		int up = portalManageBizImpl.updateById(links);
		ModelAndView mav = new ModelAndView("redirect:linksList.action");
		return mav;
	}

	// 雇主故事列表 黄绍鹏6-13 22：20
	@RequestMapping("/userStoryList.action")
	public ModelAndView userStoryList(HttpServletRequest req) {
		System.out.println("portalManageBizImpl=" + portalManageBizImpl);
		int pageNum = 1;// 当前显示的页码
		int pageSize = 5;// 每一页显示的数据条数
		// 在这里调用PageHelper类的静态方法，后面要紧跟Mapper查询数据库的方法
		PageHelper.startPage(pageNum, pageSize);
		List<UserStory> userStoryList = portalManageBizImpl.userStoryList();
		// 把查询结果，封装成pageInfo对象，该对象中包含了该数据库中的许多参数，包括记录总条数等
		PageInfo pageInfo = new PageInfo<>(userStoryList, pageSize);
		System.out.println(pageInfo.getTotal());
		req.setAttribute("pageInfo", pageInfo);
		ModelAndView mav = new ModelAndView("userStory");
		return mav;
	}

	// 修改雇主故事列表 黄绍鹏6-13 23：05
	@RequestMapping("/updateStory.action")
	public ModelAndView updateStory(HttpServletRequest req, UserStory userStory) {
		System.out.println(userStory.getStoryTitle());
		portalManageBizImpl.updateStory(userStory);
		ModelAndView mav = new ModelAndView("redirect:userStoryList.action");
		return mav;
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
		portalManageBizImpl.addUserStory(userStory);
		return "success";
	}

	// 动态列表 王伟杰 6-13
	@RequestMapping("/ListDyna.action")
	public ModelAndView ListDyna(HttpServletRequest req) {
		List<Dynamics> ListDyna = portalManageBizImpl.ListDyna();
		req.setAttribute("ListDyna", ListDyna);
		ModelAndView mav = new ModelAndView("DynaList");
		return mav;
	}

	// 资讯列表 王伟杰 6-13
	@RequestMapping("/ListInfo.action")
	public ModelAndView ListInfo(HttpServletRequest req) {
		List<Information> ListInfo = portalManageBizImpl.ListInfo();
		req.setAttribute("ListInfo", ListInfo);
		ModelAndView mav = new ModelAndView("InfoList");
		return mav;
	}

	// 删除动态 王伟杰 6-13
	@RequestMapping(value = "/deleteDynaById.action", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	public @ResponseBody String deleteDynaById(HttpServletRequest req,
			@RequestParam(value = "dynamicId", required = true, defaultValue = "empty") Long dynamicId) {
		int delete = portalManageBizImpl.deleteDynaById(dynamicId);
		return "success";
	}

	// 删除资讯 王伟杰 6-13
	@RequestMapping(value = "/deleteInfoById.action", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	public @ResponseBody String deleteInfoById(HttpServletRequest req,
			@RequestParam(value = "InformationId", required = true, defaultValue = "empty") Long InformationId) {
		int delete = portalManageBizImpl.deleteInfoById(InformationId);
		return "success";
	}

}
