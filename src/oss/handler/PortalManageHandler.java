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

import oss.bean.UserStory;
import oss.bean.Violations;
import oss.bean.Links;
import oss.biz.PortalManageBiz;
/*
 * 后端门户管理Handler
 */

@Controller
@RequestMapping("/PortalManage")
public class PortalManageHandler {

	@Resource
	private PortalManageBiz portalManageBizImpl;
	
	// 违规列表 by hlq 2018-06-14
	@RequestMapping("/violationsList.action")
	public ModelAndView violationsList(HttpServletRequest req,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum, 
			@RequestParam(value = "pageSize", required = true, defaultValue = "3") int pageSize) {
		System.out.println("portalManageBizImpl=" + portalManageBizImpl);
//		int pageNum=1;//当前显示的页码
//		int pageSize=2;//每一页显示的数据条数
		//在这里调用PageHelper类的静态方法，后面要紧跟Mapper查询数据库的方法
		PageHelper.startPage(pageNum, pageSize);
		List<Violations> violationsList = portalManageBizImpl.violationsList();
		//把查询结果，封装成pageInfo对象，该对象中包含了该数据库中的许多参数，包括记录总条数等
		PageInfo<Violations> pageInfo=new PageInfo<>(violationsList,pageSize);
		System.out.println(pageInfo.getTotal());
		req.setAttribute("pageInfo", pageInfo);
		ModelAndView mav = new ModelAndView("violationsList");
		return mav;
	}
	
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
	
	private Links links;

	@RequestMapping("/linksList.action")
	public ModelAndView linksList(HttpServletRequest req) {
		List<Links> linksList = portalManageBizImpl.listLinks();
		req.setAttribute("linksList", linksList);
		ModelAndView mav = new ModelAndView("LinksList");
		return mav;
	}

	@RequestMapping("/addlinks.action")
	public ModelAndView Addlinks(HttpServletRequest req, Links links) {
		links.setLinksname("华清");
		links.setLinksurl("www.huaqing.com");
		int addlinks = portalManageBizImpl.AddLinks(links);
		ModelAndView mav = new ModelAndView("redirect:linksList.action");
		return mav;
	}

	@RequestMapping("/deleteById.action")
	public ModelAndView deleteById(HttpServletRequest req,
			@RequestParam(value = "linksid", required = true, defaultValue = "empty") Long linksid) {
		System.out.println(linksid);
		int delete = portalManageBizImpl.deleteById(linksid);
		ModelAndView mav = new ModelAndView("redirect:linksList.action");
		return mav;
	}

	@RequestMapping("/updateById.action")
	public ModelAndView updateById(HttpServletRequest req, Links links) {
	links.setLinksurl("www.314464654");
	links.setLinksid(8l);
		int up=portalManageBizImpl.updateById(links);
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
	public ModelAndView updateStory(HttpServletRequest req,UserStory userStory) {
		System.out.println(userStory.getStoryTitle());
		portalManageBizImpl.updateStory(userStory);
		ModelAndView mav = new ModelAndView("redirect:userStoryList.action");
		return mav;
	}
}
