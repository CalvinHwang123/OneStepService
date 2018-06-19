package oss.handler;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import oss.bean.Condition;
import oss.bean.UserStory;
import oss.biz.PortalBiz;
import oss.biz.PortalManageBiz;

/*
 * 门户Handler
 */

@Controller
@RequestMapping("/Portal")
public class PortalHandler {

	@Resource
	private PortalManageBiz portalManageBizImpl;

	// 获取雇主故事列表 黄绍鹏6-19 10:23
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
		ModelAndView mav = new ModelAndView("foreground/userStory");
		return mav;
	}

}
