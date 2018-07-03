package oss.handler;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

import oss.bean.Classification;
import oss.bean.Condition;
import oss.bean.EmpRole;
import oss.bean.Emps;
import oss.bean.Menu;
import oss.bean.Role;
import oss.bean.RolePower;
import oss.bean.Trading;
import oss.bean.Users;
import oss.biz.BusiManageBiz;
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
	@Resource
	private BusiManageBiz busiManageBizImpl;
	ModelAndView mav;

	// 验证员工账号
	@RequestMapping("/checkLogin.action")
	public @ResponseBody String checkLogin(HttpServletRequest req, @RequestBody Emps emp) {
		System.out.println(emp.getEmpAccount());
		String flag = "error";
		Emps emp1 = systemManegeBizImpl.findEmp(emp.getEmpAccount());

		if (emp1 != null) {
			if (emp1.getEmpPwd().equals(emp.getEmpPwd())) {
				if (emp1.getEmpStatusID() == 2) {
					flag = "fail";
				} else {
					req.getSession().setAttribute("empss", emp1);
					flag = "success";
					// request.getSession().setAttribute("forelogin", forelogin);
				}
			} else {
				System.out.println(emp1.getEmpPwd());
				System.out.println(emp.getEmpPwd());
				flag = "pwdFail";
			}

		} else {
			flag = "error";
		}
		return flag;
	}

	// jhx 查找用户（登录）2018-6-14
	@RequestMapping("/login.action")
	public ModelAndView empLogin() {

		mav = new ModelAndView("redirect:menu.action");

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

	// jhx 获取角色列表 6-21
	@RequestMapping("/roleList.action")
	public ModelAndView roleList(HttpServletRequest req) {

		List<Role> roleList = systemManegeBizImpl.roleList();
		System.out.println("powerList===" + roleList);
		req.setAttribute("roleList", roleList);
		ModelAndView mav = new ModelAndView("background/power");
		return mav;
	}

	// jhx 获取一二级菜单及根据角色获取已拥有权限（二级菜单） 6.22
	@RequestMapping(value = "/allMenu.action", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody Map<String, List<Menu>> allMenu(@RequestBody Long roleID) {

		// System.out.println("=========角色ID==" + roleID);
		List<Menu> allOneMenu = systemManegeBizImpl.findAllOneMenu();
		System.out.println("所有一级菜单为=====" + allOneMenu);
		List<Menu> allTwoMenu = systemManegeBizImpl.findAllTwoMenu();
		System.out.println("所有二级菜单为=====" + allTwoMenu);
		List<Menu> twoPowerList = systemManegeBizImpl.powerList(roleID);
		System.out.println("拥有二级菜单为=====" + twoPowerList);
		Map<String, List<Menu>> allMenu = new HashMap<String, List<Menu>>();
		allMenu.put("allOneMenu", allOneMenu);
		allMenu.put("allTwoMenu", allTwoMenu);
		allMenu.put("twoMenuList", twoPowerList);
		return allMenu;
	}

	// jhx 提交角色权限更改 6.22
	@RequestMapping("/updatePower.action")
	public @ResponseBody String updatePower(@RequestBody Map<String, Object> rePower) {
		System.out.println("到后台提交更改权限");
		// "roleID":roleID,"powerMenus":powers
		Object id = rePower.get("roleID");
		Long roleID = Long.valueOf(String.valueOf(id));
		ArrayList<Long> twoMenus = (ArrayList<Long>) rePower.get("powerMenus");
		// System.out.println("======角色ID为" + roleID);
		// System.out.println("======权限ID为" + twoMenus);
		systemManegeBizImpl.deleteRolePower(roleID);
		for (int i = 0; i < twoMenus.size(); i++) {
			RolePower rp = new RolePower();
			Long menuID = Long.valueOf(String.valueOf(twoMenus.get(i)));
			Long powerID = systemManegeBizImpl.findPowerID(menuID);
			// System.out.println("权限ID为====" + powerID);
			rp.setRoleID(roleID);
			rp.setPowerID(powerID);

			systemManegeBizImpl.updateRolePower(rp);
		}
		String data = "success";
		// Gson data = new Gson();
		// data.toJson("success");
		return data;
	}

	// jhx 员工管理 6.26
	@RequestMapping("/empManage.action")
	public ModelAndView empManage(HttpServletRequest req,
			@RequestParam(value = "pageSize", required = true, defaultValue = "5") int pageSize,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum, Condition condition) {

		System.out.println("执行员工管理action");
		// 在这里调用PageHelper类的静态方法，后面要紧跟Mapper查询数据库的方法
		PageHelper.startPage(pageNum, pageSize);
		List<Emps> emplist = systemManegeBizImpl.findByCondition(condition);
		// 把查询结果，封装成pageInfo对象，该对象中包含了该数据库中的许多参数，包括记录总条数等
		PageInfo pageInfo = new PageInfo<>(emplist, pageSize);
		System.out.println(pageInfo.getTotal());
		List<Role> roleList = systemManegeBizImpl.roleList();
		List<EmpRole> empRoleList = systemManegeBizImpl.findAllEmpRole();
		req.setAttribute("roleList", roleList);
		req.setAttribute("emplist", pageInfo);
		req.setAttribute("condition", condition);
		req.setAttribute("empRoleList", empRoleList);
		mav = new ModelAndView("background/empManage");
		return mav;

	}

	// 更改用户状态 jhx 6.27
	@RequestMapping("/changeStatus.action")
	public @ResponseBody String Disable(@RequestBody Emps emp) {
		System.out.println("禁用");
		System.out.println("禁用员工为=====" + emp.getEmpStatusID());
		if (emp.getEmpStatusID() == 1) {
			systemManegeBizImpl.disable(emp.getEmpID());
		} else {
			systemManegeBizImpl.enable(emp.getEmpID());
		}

		return "success";
	}

	// 新增工作人员 jhx 6.27
	@RequestMapping("/addNewEmp.action")
	public @ResponseBody String addNewEmp(@RequestBody Map<String, Object> allInfo) {
		System.out.println("新增员工");
		Map empMap = (Map) allInfo.get("newEmp");
		Emps newEmp = new Emps();
		newEmp.setEmpAccount(empMap.get("empAccount").toString());
		newEmp.setEmpPwd(empMap.get("empPwd").toString());
		newEmp.setEmpName(empMap.get("empName").toString());
		newEmp.setEmpPhone(empMap.get("empPhone").toString());
		newEmp.setEmpIdentity(empMap.get("empIdentity").toString());
		newEmp.setEmpEmail(empMap.get("empEmail").toString());
		newEmp.setEmpAddress(empMap.get("empAddress").toString());
		Long statusID = Long.valueOf(empMap.get("empStatusID").toString());
		newEmp.setEmpStatusID(statusID);
		System.out.println(newEmp.getEmpAccount());
		systemManegeBizImpl.addEmp(newEmp);
		System.out.println(newEmp.getEmpAccount());
		Long empID = systemManegeBizImpl.findEmp(newEmp.getEmpAccount()).getEmpID();
		Object id = allInfo.get("roleID");
		Long roleID = Long.valueOf(String.valueOf(id));
		EmpRole er = new EmpRole();
		er.setEmpID(empID);
		er.setRoleID(roleID);
		System.out.println(er);
		systemManegeBizImpl.addEmpRole(er);
		return "success";
	}

	// 修改员工信息，查找员工 jhx 6.27
	@RequestMapping("/empInfo.action")
	public @ResponseBody Emps empInfo(HttpServletRequest req, @RequestBody Long empID) {
		System.out.println("修改信息之获取员工信息");
		System.out.println("修改信息之获取员工信息id" + empID);
		Emps emp = systemManegeBizImpl.findEmpById(empID);

		return emp;
	}

	// 更新工作人员 jhx 6.27
	@RequestMapping("/updateEmp.action")
	public @ResponseBody String updateEmp(@RequestBody Map<String, Object> allInfo) {
		System.out.println("新增员工");
		Map empMap = (Map) allInfo.get("updateEmp");
		Emps emp = new Emps();
		Long empID = Long.valueOf(empMap.get("empID").toString());
		emp.setEmpID(empID);
		emp.setEmpAccount(empMap.get("empAccount").toString());
		emp.setEmpPwd(empMap.get("empPwd").toString());
		emp.setEmpName(empMap.get("empName").toString());
		emp.setEmpPhone(empMap.get("empPhone").toString());
		emp.setEmpIdentity(empMap.get("empIdentity").toString());
		emp.setEmpEmail(empMap.get("empEmail").toString());
		emp.setEmpAddress(empMap.get("empAddress").toString());
		Long statusID = Long.valueOf(empMap.get("empStatusID").toString());
		emp.setEmpStatusID(statusID);
		// System.out.println(newEmp.getEmpAccount());
		systemManegeBizImpl.updateEmp(emp);

		// systemManegeBizImpl.addEmp(newEmp);
		// System.out.println(newEmp.getEmpAccount());
		// Long empID = systemManegeBizImpl.findEmp(newEmp.getEmpAccount()).getEmpID();
		Object id = allInfo.get("roleID");
		Long roleID = Long.valueOf(String.valueOf(id));
		EmpRole er = new EmpRole();
		er.setEmpID(empID);
		er.setRoleID(roleID);
		System.out.println(er);
		systemManegeBizImpl.updateEmpRole(er);
		return "success";
	}

	// 删除员工 jhx 6.27
	@RequestMapping("/delateEmp.action")
	public @ResponseBody String delateEmp(HttpServletRequest req, @RequestBody Long empID) {
		System.out.println("删除员工");
		System.out.println("删除员工id为" + empID);
		systemManegeBizImpl.deleteEmp(empID);

		return "success";
	}

	// 删除员工 jhx 6.27
	@RequestMapping("/delateEmps.action")
	public @ResponseBody String delateEmp(@RequestBody List<String> empList) {
		System.out.println("批量删除");
		System.out.println("violationsID list size=" + empList.size());
		// for (int i = 0; i <= empList.size(); i++) {
		// systemManegeBizImpl.deleteEmp(empList[i]);
		// }

		// return "删除成功";

		return flg;
	}

	// jhx 获取账户交易明细表 6-29
	@RequestMapping("/trading.action")
	public ModelAndView TradingList(HttpServletRequest request,
			@RequestParam(value = "pageSize", required = true, defaultValue = "5") int pageSize,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum, Condition condition) {
		HttpSession session = request.getSession();
		// Users users2 = (Users) session.getAttribute("forelogin");
		// String userAcc = users2.getUserAccount();
		// condition.setTitle(userAcc);
		PageHelper.startPage(pageNum, pageSize);
		List<Trading> listTrading = busiManageBizImpl.findTraByCondition(condition);
		PageInfo pageInfo = new PageInfo<>(listTrading, pageSize);
		System.out.println(pageInfo.getTotal());
		List<Users> listUser = busiManageBizImpl.findAllUser();
		request.setAttribute("listUser", listUser);
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("condition", condition);
		ModelAndView mav = new ModelAndView("background/trading");
		return mav;
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
		request.setAttribute("condition", condition);
		ModelAndView classification = new ModelAndView("/background/classification");
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
		request.setAttribute("condition", condition);
		ModelAndView classification = new ModelAndView("/background/Serviceprovidertype");
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
