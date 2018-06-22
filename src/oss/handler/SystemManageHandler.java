package oss.handler;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import oss.bean.Classification;
import oss.bean.Condition;
import oss.bean.Emps;
import oss.bean.Menu;
import oss.bean.Powers;
import oss.bean.Role;
import oss.biz.SystemManegeBiz;

/*
 * 系统管理Handler
 */

@Controller
@RequestMapping("/SystemManage")
public class SystemManageHandler {
	String flg = "error";
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
			req.getSession().setAttribute("empss", emp);
			System.out.println("登录成功");
			mav = new ModelAndView("redirect:menu.action");

		} else {
			System.out.println("登陆失败");
			mav = new ModelAndView("userStory");
		}

		return mav;

	}

	// jhx 登录成功后跳转查找对应菜单
	@RequestMapping("/menu.action")
	public ModelAndView menuList(HttpServletRequest req) {

		Emps emp = (Emps) req.getSession().getAttribute("empss");
		Long empID = emp.getEmpID();
		System.out.println("员工ID为======" + empID);
		List<Menu> oneMenuList = systemManegeBizImpl.oneMenuList(empID);
		System.out.println("一级菜单为=====" + oneMenuList);
		List<Menu> twoMenuList = systemManegeBizImpl.twoMenuList(empID);
		System.out.println("二级菜单为=====" + twoMenuList);
		req.setAttribute("oneMenuList", oneMenuList);
		req.setAttribute("twoMenuList", twoMenuList);
		ModelAndView mav = new ModelAndView("background/index");
		return mav;
	}

	// jhx 获取角色列表及权限列表 6-21
	@RequestMapping("/roleList.action")
	public ModelAndView roleList(HttpServletRequest req) {
		// Emps emp = (Emps) req.getSession().getAttribute("empss");
		// Long empID = emp.getEmpID();
		Long empID = (long) 1;
		System.out.println("员工ID为======" + empID);
		List<Menu> allOneMenu = systemManegeBizImpl.findAllOneMenu();
		System.out.println("所有一级菜单为=====" + allOneMenu);
		List<Menu> allTwoMenu = systemManegeBizImpl.findAllTwoMenu();
		System.out.println("所有二级菜单为=====" + allTwoMenu);
		List<Menu> twoMenuList = systemManegeBizImpl.twoMenuList(empID);
		System.out.println("二级菜单为=====" + twoMenuList);

		List<Role> roleList = systemManegeBizImpl.roleList();
		System.out.println("powerList===" + roleList);
		req.setAttribute("allOneMenu", allOneMenu);
		req.setAttribute("allTwoMenu", allTwoMenu);
		req.setAttribute("roleList", roleList);
		ModelAndView mav = new ModelAndView("background/power");
		return mav;
	}

	// jhx 获取权限列表 6.22
	@RequestMapping("/powerList.action")
	public List<Powers> powerList(HttpServletRequest req) {
		List<Powers> powerList = systemManegeBizImpl.powerList();
		System.out.println("powerList===" + powerList);
		return powerList;
	}

	// 类型数据添加 袁楠文 2018-6-16 12:17
	@RequestMapping("/addClasslistData")
	public @ResponseBody String addclasslistData(HttpServletRequest request,
			@RequestBody Classification classification) {
		int addclasslistdata = 0;
		if (String.valueOf(classification.getClassificationPid()).equals("0")) {
			addclasslistdata = systemManegeBizImpl.addclasslistdata(classification);
		} else {
			addclasslistdata = systemManegeBizImpl.addclasslistdata(classification);
		}
		if (addclasslistdata == 1) {
			flg = "success";
		}
		return flg;
	}

	// 一级分类唯一验证 袁楠文 2018-6-14 10:50
	@RequestMapping("/classUniquequery")
	public @ResponseBody String classUniquequery(HttpServletRequest request) {
		String oneclassname = request.getParameter("oneclassname");
		List<Object> oneclass = systemManegeBizImpl.Classuniquequery(oneclassname);
		if (oneclass.size() == 0) {
			flg = "success";
		}
		return flg;
	}

	// 分类数据请求 袁楠文 2018-6-14 10:50
	@RequestMapping("/seekclasslist")
	public ModelAndView seekclasslist(HttpServletRequest request,
			@RequestParam(value = "pageSize", required = true, defaultValue = "5") int pageSize,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum, Condition condition) {
		PageHelper.startPage(pageNum, pageSize);
		List<Classification> classlist = systemManegeBizImpl.seekclasslist(condition);
		List<Classification> oneclassmenulist = systemManegeBizImpl.oneclassMenu();
		PageInfo pageInfo = new PageInfo<>(classlist, pageSize);
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("listsize", classlist.size());
		request.setAttribute("oneclassmenulist", oneclassmenulist);
		ModelAndView classification = new ModelAndView("classification");
		return classification;
	}

	// 服务商列表数据请求 袁楠文 2018-6-16 23:52
	@RequestMapping("/serseekServicelist")
	public ModelAndView seekServicelist(HttpServletRequest request,
			@RequestParam(value = "pageSize", required = true, defaultValue = "5") int pageSize,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum, Condition condition) {
		PageHelper.startPage(pageNum, pageSize);
		List<Classification> seroneclassmenulist = systemManegeBizImpl.seroneclassMenu(condition);
		List<Classification> oneclassmenulist = systemManegeBizImpl.oneclassMenu();
		PageInfo pageInfo = new PageInfo<>(seroneclassmenulist, pageSize);
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("listsize", seroneclassmenulist.size());
		request.setAttribute("oneclassmenulist", oneclassmenulist);
		ModelAndView classification = new ModelAndView("Serviceprovidertype");
		return classification;
	}

	// 批量删除数据 袁楠文 2018-6-19 14:10
	@RequestMapping("/delbatchclass")
	public @ResponseBody String delbatchclass(HttpServletRequest req,
			@RequestBody List<Classification> batchclasslist) {
		int j = 0;
		for (int i = 0; i < batchclasslist.size(); i++) {
			int delclassnumber = systemManegeBizImpl.delclasslistdata(batchclasslist.get(i).getClassificationId());
			if (delclassnumber == 1) {
				j++;
				continue;
			} else {
				flg = "error";
				break;
			}
		}
		if (j == batchclasslist.size()) {
			flg = "success";
		}
		return flg;
	}

	// 分类列表数据删除 袁楠文 2018-6-15 11:11
	@RequestMapping("/delclasslistdata")
	public @ResponseBody String delclasslistdata(HttpServletRequest request,
			@RequestParam(value = "classificationId", required = true, defaultValue = "empty") Long classificationId) {
		String classtype = request.getParameter("classtype");
		if (classtype.equals("服务商")) {
			Condition condition = new Condition();
			condition.setClassPid(classificationId.intValue());
			List<Classification> classlist = systemManegeBizImpl.seekclasslist(condition);
			System.out.println("二级分类数量:" + classlist.size());
			int j = 0;
			if (classlist.size() != 0) {
				for (int i = 0; i < classlist.size(); i++) {
					int delclassnumber = systemManegeBizImpl.delclasslistdata(classlist.get(i).getClassificationId());
					if (delclassnumber == 1) {
						j++;
						continue;
					} else {
						flg = "error";
						break;
					}
				}
				if (!flg.equals("error")) {
					System.out.println(j);
					if (j == classlist.size()) {
						System.out.println("二级分类删除完成");
						int deloneclassnumber = systemManegeBizImpl.delclasslistdata(classificationId);
						if (deloneclassnumber == 1) {
							flg = "success";
						}
					}
				}
			} else {
				System.out.println("没有二级分类");
				if (j == classlist.size()) {
					System.out.println("二级分类删除完成");
					int deloneclassnumber = systemManegeBizImpl.delclasslistdata(classificationId);
					if (deloneclassnumber == 1) {
						flg = "success";
					}
				}
			}
		} else {
			int delclassnumber = systemManegeBizImpl.delclasslistdata(classificationId);
			if (delclassnumber == 1) {
				flg = "success";
			}
		}
		System.out.println(flg);
		return flg;
	}

	// 分类列表数据修改 袁楠文 2018-6-16 22:36
	@RequestMapping("/reviseClasslistData")
	public @ResponseBody String reviseClasslistData(HttpServletRequest request,
			@RequestBody Classification classification) {
		int reviseclassnumber = 0;
		reviseclassnumber = systemManegeBizImpl.reviseClasslistData(classification);
		if (reviseclassnumber == 1) {
			flg = "success";
		}
		return flg;
	}
}
