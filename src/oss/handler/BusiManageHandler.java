package oss.handler;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import oss.bean.Credit;

import oss.bean.Logs;
import oss.bean.UserStory;
import oss.bean.Users;
import oss.bean.Violations;
import oss.bean.demands;
import oss.biz.BusiManageBiz;
import oss.util.DateUtil;

/*
 * 业务管理Handler
 */

@Controller
@RequestMapping("/BusiManage")
public class BusiManageHandler {

	@Resource
	private BusiManageBiz busiManageBizImpl;

	// 华清修改：查询雇主信息
	@RequestMapping("/UserList.action")
	public ModelAndView UserList(HttpServletRequest req, 
			@RequestParam(value = "pageSize", required = true, defaultValue = "5") int pageSize, 
		@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum, 
		Condition condition) {
		System.out.println("BusiManageBiz=" + busiManageBizImpl);
		System.out.println("走到了走到了");
		// 在这里调用PageHelper类的静态方法，后面要紧跟Mapper查询数据库的方法
		PageHelper.startPage(pageNum, pageSize);
		List<Users> Userlist = busiManageBizImpl.listUser(condition);
		// 把查询结果，封装成pageInfo对象，该对象中包含了该数据库中的许多参数，包括记录总条数等
		PageInfo pageInfo = new PageInfo<>(Userlist, pageSize);
		System.out.println(pageInfo.getTotal());
		req.setAttribute("UserList", pageInfo);
		req.setAttribute("condition", condition);
		ModelAndView mav = new ModelAndView("Employer");
		return mav;
	}
	// 华清修改：查询服务商信息
		@RequestMapping("/providerList.action")
		public ModelAndView providerlist(HttpServletRequest req, 
				@RequestParam(value = "pageSize", required = true, defaultValue = "5") int pageSize, 
			@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum, 
			Condition condition) {
			System.out.println("BusiManageBiz=" + busiManageBizImpl);
		
			// 在这里调用PageHelper类的静态方法，后面要紧跟Mapper查询数据库的方法
			PageHelper.startPage(pageNum, pageSize);
			List<Users> providerList = busiManageBizImpl.providerList(condition);
			// 把查询结果，封装成pageInfo对象，该对象中包含了该数据库中的许多参数，包括记录总条数等
			PageInfo pageInfo = new PageInfo<>(providerList, pageSize);
			System.out.println(pageInfo.getTotal());
			req.setAttribute("providerList", pageInfo);
			ModelAndView mav = new ModelAndView("provider");
			return mav;
		}
		
		// 华清修改：查询需求管理信息
				@RequestMapping("/demandList.action")
				public ModelAndView demandList(HttpServletRequest req, 
						@RequestParam(value = "pageSize", required = true, defaultValue = "5") int pageSize, 
					@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum, 
					Condition condition) {
					System.out.println("BusiManageBiz=" + busiManageBizImpl);
				
					// 在这里调用PageHelper类的静态方法，后面要紧跟Mapper查询数据库的方法
					PageHelper.startPage(pageNum, pageSize);
					List<demands> demandList = busiManageBizImpl.demandList(condition);
					// 把查询结果，封装成pageInfo对象，该对象中包含了该数据库中的许多参数，包括记录总条数等
					PageInfo pageInfo = new PageInfo<>(demandList, pageSize);
					System.out.println(pageInfo.getTotal());
					req.setAttribute("demandList", pageInfo);
					ModelAndView mav = new ModelAndView("demandManagement");
					return mav;

				}





	// 重置密码
	// 修改密码


	// 华清修改：雇主服务商管理重置密码
	@RequestMapping("/updatePow.action")
	public @ResponseBody String updatePow(HttpServletRequest req, @RequestBody Users users) {

		System.out.println("重置密码");
		busiManageBizImpl.updatePow(users.getUserID());
		return "success";
	}


	// 华清修改：雇主服务商管理加入黑名单

	@RequestMapping("/Blacklist.action")
	public @ResponseBody String Blacklist(HttpServletRequest req, @RequestBody Users users) {
		System.out.println("加入黑名单");
		busiManageBizImpl.Blacklist(users.getUserID());
		return "success";
	}

	// 华清修改：雇主服务商管理取消黑名单

		@RequestMapping("/cancelBlacklist.action")
		public @ResponseBody String cancelBlacklist(HttpServletRequest req, @RequestBody Users users) {
			System.out.println("取消黑名单");
			busiManageBizImpl.cancelBlacklist(users.getUserID());
			return "success";
		}

		// 华清修改：雇主服务商管理禁用

	// 禁用
	@RequestMapping("/Disable.action")
	public @ResponseBody String Disable(HttpServletRequest req, @RequestBody Users users) {
		System.out.println("禁用");
		busiManageBizImpl.Disable(users.getUserID());
		return "success";
	}


	// 华清修改：雇主服务商管理启用


	@RequestMapping("/enable.action")
	public @ResponseBody String enable(HttpServletRequest req, @RequestBody Users users) {
		System.out.println("启用");
		busiManageBizImpl.enable(users.getUserID());
		return "success";
	}

	

	// 华清修改：雇主服务商管理需求审核通过

	@RequestMapping("/examine.action")
	public @ResponseBody String examine(HttpServletRequest req, @RequestBody demands demands) {
		System.out.println("审核通过");
		busiManageBizImpl.examine(demands.getDemandID());
		return "success";
	}

	// 华清修改：雇主服务商管理需求审核不通过

	@RequestMapping("/Audited.action")
	public @ResponseBody String Audited(HttpServletRequest req, @RequestBody demands demands) {
		System.out.println("审核不通过");
		busiManageBizImpl.Audited(demands.getDemandID());
		return "success";
	}


	// 前台登入
	@RequestMapping("/foreLogin.action")
	public @ResponseBody String ForeLogin(HttpServletRequest request, @RequestBody Users users) {
		System.out.println(users.getUserAccount());
		String flag = "error";
		Users forelogin = busiManageBizImpl.ForeLogin(users);

			if (forelogin!=null) {
					if(forelogin.getUserStatusID()==2) {
						flag="fail";		
					}else {						
				flag = "success";
				request.getSession().setAttribute("forelogin", forelogin);
					}
			} else {
				flag = "error";		
			}
		return flag;
	}

	// 前台注册
	@RequestMapping("/addUsers.action")
	public @ResponseBody String AddUsers(HttpServletRequest req, @RequestBody Users users) {
		String flag = "error";
		int regist = busiManageBizImpl.AddUsers(users);
		if (regist == 1) {
			flag = "success";
		} else {
			flag = "error";
		}
		return flag;
	}

	// 唯一性验证
	@RequestMapping("/selectName.action")
	public @ResponseBody String SelectName(HttpServletRequest req, @RequestBody Users users) {
		String flag = "error";
		System.out.println(users.getUserAccount());
		List<Users> list = busiManageBizImpl.SelectName(users);
		if (list.size() > 0) {
			flag = "error";
		} else {
			flag = "success";
		}
		return flag;
	}
	// 退出
	@RequestMapping("/usersExit.action")
	public ModelAndView usersExit(HttpServletRequest request, Users user) {
		 HttpSession session=request.getSession(false);
	            
         //从session移除
         session.removeAttribute("forelogin");
		ModelAndView mav = new ModelAndView("../ForeLogin");
		return mav;		
	}



//华清修改：需求管理扣除信用分
	@RequestMapping(value = "/deducTion.action", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	public @ResponseBody String violationsInsert(@RequestBody Credit credit,Users users,Violations violations) {

		violations.setViolationsTime(DateUtil.getCurrentDate());
		violations.setViolationsWhy(credit.getCreditWhy());
		violations.setUserID(credit.getUserID());
		violations.setViolationsResult("扣除信用分:"+credit.getCreditPoints());
		System.out.println("走到了");
//		System.out.println(credit.getUserID());
//		System.out.println(credit.getCreditPoints());
		users.setUserID(credit.getUserID());
		busiManageBizImpl.userCreditScore(credit);
	    busiManageBizImpl.creditCreditScore(credit);
		busiManageBizImpl.violaTionCreditScore(violations);
		    return "扣除成功";
		
	}
}

