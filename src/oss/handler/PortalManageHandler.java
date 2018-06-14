package oss.handler;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import oss.bean.Logs;
import oss.bean.Violations;
import oss.biz.BusiManageBiz;
import oss.biz.LogsBiz;
import oss.biz.PortalManageBiz;


/*
 * 后端门户管理Handler
 */

@Controller
@RequestMapping("/PortalManage")
public class PortalManageHandler {
	
	@Resource
	private PortalManageBiz portalManageBizImpl;
	
	// by hlq 2018-06-14
	@RequestMapping("/violationssList.action")
	public ModelAndView violationssList(HttpServletRequest req) {
		System.out.println("portalManageBizImpl=" + portalManageBizImpl);
		int pageNum=3;//当前显示的页码
		int pageSize=2;//每一页显示的数据条数
		//在这里调用PageHelper类的静态方法，后面要紧跟Mapper查询数据库的方法
		PageHelper.startPage(pageNum, pageSize);
		List<Violations> violationsList = portalManageBizImpl.violationsList();
		//把查询结果，封装成pageInfo对象，该对象中包含了该数据库中的许多参数，包括记录总条数等
		PageInfo pageInfo=new PageInfo<>(violationsList,pageSize);
		System.out.println(pageInfo.getTotal());
		req.setAttribute("pageInfo", pageInfo);
		ModelAndView mav = new ModelAndView("violationslist");
		return mav;
	}

}
