package oss.handler;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import oss.bean.Links;
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
	private Links links;

	@RequestMapping("/linksList.action")
	public ModelAndView linksList(HttpServletRequest req) {
		List<Links> linksList = portalManageBizImpl.listLinks();
		req.setAttribute("linksList", linksList);
		ModelAndView mav = new ModelAndView("LinksTest1");
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
	

}
