package oss.handler;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.junit.Test;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import oss.bean.Emps;
import oss.bean.Powers;
import oss.biz.SystemManegeBiz;

/*
 * 系统管理Handler
 */

@Controller
@RequestMapping("/SystemManage")
public class SystemManageHandler {

	@Resource
	private SystemManegeBiz systemManegeBizImpl;
	ModelAndView mav;

	// jhx 查找用户（登录）2018-6-14
	@RequestMapping("/login.action")
	public ModelAndView empLogin(HttpServletRequest req) {
		String empAccount = req.getParameter("empname");
		String empPwd = req.getParameter("password");
		System.out.println("用户名为==" + empAccount + "密码为==" + empPwd);
		Emps emp = systemManegeBizImpl.findEmp(empAccount);
		System.out.println("登陆员工为" + emp);
		if (emp != null && emp.getEmpPwd().equals(empPwd)) {
			req.setAttribute("emp", emp);
			System.out.println("登录成功");
			mav = new ModelAndView("index");

		} else {
			System.out.println("登陆失败");
			mav = new ModelAndView("userStory");
		}

		return mav;

	}

	// jhx 获取权限列表 2018-6-14 9:00
	@Test
	@RequestMapping("/powerList.action")
	public List<Powers> powerList(HttpServletRequest req) {
		List<Powers> powerList = systemManegeBizImpl.powerList();
		System.out.println("powerList===" + powerList);
		return powerList;
	}

}
