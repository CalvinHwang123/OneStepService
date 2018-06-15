package oss.handler;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.junit.Test;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import oss.bean.Emps;
import oss.bean.Powers;
import oss.bean.classification;
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

	// 一级分类唯一验证 袁楠文 2018-6-14 10:50
	@RequestMapping("/classUniquequery")
	public @ResponseBody String classUniquequery(HttpServletRequest request) {
		String flg = "error";
		String oneclassname = request.getParameter("oneclassname");
		List<Object> oneclass = systemManegeBizImpl.Classuniquequery(oneclassname);
		if (oneclass.size() == 0) {
			flg = "success";
		}
		return flg;
	}

	// 一级分类唯一验证 袁楠文 2018-6-14 10:50
	@RequestMapping("/seekclasslist")
	public ModelAndView seekclasslist(HttpServletRequest request) {

		int pageNum = 1;// 当前显示的页码;
		int pageSize = 5;// 每一页显示的数据条数;

		PageHelper.startPage(pageNum, pageSize);
		List<classification> classlist = systemManegeBizImpl.seekclasslist();
		PageInfo pageInfo = new PageInfo<>(classlist, pageSize);
		// System.out.println("pageInfo:"+pageInfo.getTotal());
		request.setAttribute("pageInfo", pageInfo);
		ModelAndView classification = new ModelAndView("classification");
		return classification;
	}

	// 删除分类列表数据 袁楠文 2018-6-14 22:50
	@RequestMapping("/delclasslistdata")
	public ModelAndView delclasslistdata(HttpServletRequest request) {

		/*
		 * PageHelper.startPage(pageNum, pageSize); classlist=
		 * systemManegeBizImpl.seekclasslist(); PageInfo pageInfo = new
		 * PageInfo<>(classlist, pageSize);
		 * System.out.println("pageInfo:"+pageInfo.getTotal());
		 * request.setAttribute("pageInfo", pageInfo); ModelAndView classification = new
		 * ModelAndView("classification");
		 */
		return null;
	}
}
