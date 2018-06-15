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
import oss.bean.Users;
import oss.biz.BusiManageBiz;


/*
 * 业务管理Handler
 */

@Controller
@RequestMapping("/BusiManage")
public class BusiManageHandler {
	
	@Resource
	private BusiManageBiz busiManageBizImpl;
	//华清修改：查询雇主信息
	@RequestMapping("/Userlist.action")
	public ModelAndView Userlist(HttpServletRequest req) {
		System.out.println("BusiManageBiz=" + busiManageBizImpl);
		int pageNum=2;//当前显示的页码
		int pageSize=5;//每一页显示的数据条数
		//在这里调用PageHelper类的静态方法，后面要紧跟Mapper查询数据库的方法
		PageHelper.startPage(pageNum, pageSize);
		List<Users> Userlist = busiManageBizImpl.Userlist();
		//把查询结果，封装成pageInfo对象，该对象中包含了该数据库中的许多参数，包括记录总条数等
		PageInfo pageInfo=new PageInfo<>(Userlist,pageSize);
		System.out.println(pageInfo.getTotal());
		req.setAttribute("Userlist", pageInfo);
		ModelAndView mav = new ModelAndView("Employer");
		return mav;
	}
	//修改密码
	@RequestMapping("/updatepow.action")
	public ModelAndView updatepow(HttpServletRequest request,Users user
			) {
	     System.out.println("走到了");
//		busiManageBizImpl.DlUserID( dl);
	  System.out.println("用户ID："+user.getUserID());
	   busiManageBizImpl.DlUserID( user.getUserID());
		ModelAndView mav = new ModelAndView("redirect:Userlist.action");
		return mav;
	}
	//加入黑名单
	@RequestMapping("/Blacklist.action")
	public ModelAndView Blacklist(HttpServletRequest request,Users user
			) {
	     System.out.println("走到了");
//		busiManageBizImpl.DlUserID( dl);
	  System.out.println("用户ID："+user.getUserID());
	   busiManageBizImpl.Blacklist(user.getUserID());
		ModelAndView mav = new ModelAndView("redirect:Userlist.action");
		return mav;
	}
	//禁用
	@RequestMapping("/Disable.action")
	public ModelAndView Disable(HttpServletRequest request,Users user
			) {
	     System.out.println("走到了");
//		busiManageBizImpl.DlUserID( dl);
	  System.out.println("用户ID："+user.getUserID());
	   busiManageBizImpl.Disable(user.getUserID());
		ModelAndView mav = new ModelAndView("redirect:Userlist.action");
		return mav;
	}
	
	
	//华清修改：查询服务商信息
	@RequestMapping("/providerlist.action")
	public ModelAndView providerlist(HttpServletRequest req) {
		System.out.println("BusiManageBiz=" + busiManageBizImpl);
		int pageNum=2;//当前显示的页码
		int pageSize=5;//每一页显示的数据条数
		//在这里调用PageHelper类的静态方法，后面要紧跟Mapper查询数据库的方法
		PageHelper.startPage(pageNum, pageSize);
		List<Users> Userlist = busiManageBizImpl.providerlist();
		//把查询结果，封装成pageInfo对象，该对象中包含了该数据库中的许多参数，包括记录总条数等
		PageInfo pageInfo=new PageInfo<>(Userlist,pageSize);
		System.out.println(pageInfo.getTotal());
		req.setAttribute("Userlist", pageInfo);
		ModelAndView mav = new ModelAndView("provider");
		return mav;
	}
	//修改密码
	@RequestMapping("/providerupdatepow.action")
	public ModelAndView providerupdatepow(HttpServletRequest request,Users user
			) {
	     System.out.println("走到了");
//		busiManageBizImpl.DlUserID( dl);
	  System.out.println("用户ID："+user.getUserID());
	   busiManageBizImpl.providerupdatepow( user.getUserID());
		ModelAndView mav = new ModelAndView("redirect:Userlist.action");
		return mav;
	}
	//加入黑名单
	@RequestMapping("/providerBlacklist.action")
	public ModelAndView providerBlacklist(HttpServletRequest request,Users user
			) {
	     System.out.println("走到了");
//		busiManageBizImpl.DlUserID( dl);
	  System.out.println("用户ID："+user.getUserID());
	   busiManageBizImpl.providerBlacklist(user.getUserID());
		ModelAndView mav = new ModelAndView("redirect:Userlist.action");
		return mav;
	}
	//禁用
	@RequestMapping("/providerDisable.action")
	public ModelAndView providerDisable(HttpServletRequest request,Users user
			) {
	     System.out.println("走到了");
//		busiManageBizImpl.DlUserID( dl);
	  System.out.println("用户ID："+user.getUserID());
	   busiManageBizImpl.providerDisable(user.getUserID());
		ModelAndView mav = new ModelAndView("redirect:Userlist.action");
		return mav;
	}
	

}
