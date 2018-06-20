package oss.handler;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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
import oss.bean.Users;
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
	public ModelAndView linksList(HttpServletRequest req,
			@RequestParam(value = "pageSize", required = true, defaultValue = "5") int pageSize,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum, Condition condition) {
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
	public @ResponseBody String deleteById(HttpServletRequest req, @RequestBody List<Links> linksList) {
		int delete = portalManageBizImpl.deleteById(linksList);
		// ModelAndView mav = new ModelAndView("redirect:linksList.action");
		return "success";
	}

	@RequestMapping("/updateById.action")
	public @ResponseBody String updateById(HttpServletRequest req, @RequestBody Links links) {
		int up = portalManageBizImpl.updateById(links);
		return "success";
	}

	// 雇主故事列表 黄绍鹏6-15 15：13
	@RequestMapping("/userStoryList.action")
	public ModelAndView userStoryList(HttpServletRequest req,
			@RequestParam(value = "pageSize", required = true, defaultValue = "5") int pageSize,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum, Condition condition) {
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
	public @ResponseBody String updateStory(HttpServletRequest req, @RequestBody UserStory userStory) {
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
		portalManageBizImpl.addUserStory(userStory);
		return "success";
	}

	// 动态列表 王伟杰 6-13
	@RequestMapping("/listDyna.action")
	public ModelAndView ListDyna(HttpServletRequest req,
			@RequestParam(value = "pageSize", required = true, defaultValue = "5") int pageSize,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum, Condition condition) {

		PageHelper.startPage(pageNum, pageSize);
		List<Dynamics> ListDyna = portalManageBizImpl.ListDyna(condition);
		PageInfo pageInfo = new PageInfo<>(ListDyna, pageSize);
		System.out.println(pageInfo.getTotal());
		req.setAttribute("pageInfo", pageInfo);
		ModelAndView mav = new ModelAndView("DynaList");
		return mav;
	}

	// 增加动态
	@RequestMapping("/addDyna.action")
	public @ResponseBody String AddDyna(HttpServletRequest req, @RequestBody Dynamics dynamics) {
		int addlinks = portalManageBizImpl.AddDyna(dynamics);
		return "success";
	}

	// 删除动态 王伟杰 6-13
	@RequestMapping(value = "/deleteDynaById.action", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	public @ResponseBody String deleteDynaById(HttpServletRequest req, @RequestBody List<Dynamics> dynaList) {
		int delete = portalManageBizImpl.deleteDynaById(dynaList);
		return "success";
	}

	// 修改动态
	@RequestMapping("/updateDynaById.action")
	public @ResponseBody String updateDynaById(HttpServletRequest req, @RequestBody Dynamics dynamics) {

		int up = portalManageBizImpl.updateDynaById(dynamics);
		return "success";
	}

	// 资讯列表 王伟杰 6-13
	@RequestMapping("/listInfo.action")
	public ModelAndView ListInfo(HttpServletRequest req,
			@RequestParam(value = "pageSize", required = true, defaultValue = "5") int pageSize,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum, Condition condition) {
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
	public @ResponseBody String deleteInfoById(HttpServletRequest req, @RequestBody List<Information> infoList) {
		int delete = portalManageBizImpl.deleteInfoById(infoList);
		return "success";
	}

	// 修改资讯
	@RequestMapping("/updateInfoById.action")
	public @ResponseBody String updateInfoById(HttpServletRequest req, @RequestBody Information information) {
		System.out.println(information);
		int up = portalManageBizImpl.updateInfoById(information);
		return "success";
	}

	// 增加资讯
	@RequestMapping("/addInfo.action")
	public @ResponseBody String AddInfo(HttpServletRequest req, @RequestBody Information information) {
		int addlinks = portalManageBizImpl.AddInfo(information);
		return "success";
	}

}
