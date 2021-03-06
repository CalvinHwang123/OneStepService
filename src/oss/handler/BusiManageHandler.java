package oss.handler;

import java.util.List;
import java.util.Set;

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

import com.chenssy.keyword.SensitiveWord;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;

import oss.bean.Classification;
import oss.bean.Condition;
import oss.bean.Credit;
import oss.bean.Tender;
import oss.bean.Trading;
import oss.bean.Users;
import oss.bean.Violations;
import oss.bean.Workinformation;
import oss.bean.Works;
import oss.bean.userService;
import oss.bean.Demands;
import oss.biz.BusiManageBiz;
import oss.biz.PortalBiz;
import oss.biz.SystemManegeBiz;
import oss.util.DateUtil;

/*
 * 业务管理Handler
 */

@Controller
@RequestMapping("/BusiManage")
public class BusiManageHandler {

	@Resource
	private BusiManageBiz busiManageBizImpl;
	@Resource
	private SystemManegeBiz systemManegeBizImpl;
	@Resource
	private PortalBiz portalBizImpl;

	// 华清修改：查询雇主信息
	@RequestMapping("/UserList.action")
	public ModelAndView UserList(HttpServletRequest req,
			@RequestParam(value = "pageSize", required = true, defaultValue = "5") int pageSize,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum, Condition condition) {
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
		ModelAndView mav = new ModelAndView("/background/Employer");
		return mav;
	}

	// 华清修改：查询服务商信息
	@RequestMapping("/providerList.action")
	public ModelAndView providerlist(HttpServletRequest req,
			@RequestParam(value = "pageSize", required = true, defaultValue = "5") int pageSize,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum, Condition condition) {
		System.out.println("BusiManageBiz=" + busiManageBizImpl);

		// 在这里调用PageHelper类的静态方法，后面要紧跟Mapper查询数据库的方法
		PageHelper.startPage(pageNum, pageSize);
		List<Users> providerList = busiManageBizImpl.providerList(condition);
		// 把查询结果，封装成pageInfo对象，该对象中包含了该数据库中的许多参数，包括记录总条数等
		PageInfo pageInfo = new PageInfo<>(providerList, pageSize);
		System.out.println(pageInfo.getTotal());
		req.setAttribute("providerList", pageInfo);
		ModelAndView mav = new ModelAndView("/background/provider");
		return mav;
	}

	// 华清修改：查询需求管理信息
	@RequestMapping("/demandList.action")
	public ModelAndView demandList(HttpServletRequest req,
			@RequestParam(value = "pageSize", required = true, defaultValue = "5") int pageSize,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum, Condition condition) {
		System.out.println("BusiManageBiz=" + busiManageBizImpl);

		// 在这里调用PageHelper类的静态方法，后面要紧跟Mapper查询数据库的方法
		PageHelper.startPage(pageNum, pageSize);
		List<Demands> demandList = busiManageBizImpl.demandList(condition);
		// 把查询结果，封装成pageInfo对象，该对象中包含了该数据库中的许多参数，包括记录总条数等
		PageInfo pageInfo = new PageInfo<>(demandList, pageSize);
		System.out.println(pageInfo.getTotal());
		req.setAttribute("demandList", pageInfo);
		ModelAndView mav = new ModelAndView("/background/demandManagement");
		return mav;

	}

	// 重置密码
	// 修改密码

	// 华清修改：雇主服务商管理重置密码
	@RequestMapping("/updatePow.action")
	public @ResponseBody String updatePow(HttpServletRequest req, @RequestBody Users users) {

		System.out.println("重置密码");
		busiManageBizImpl.updatePow(users);
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
	public @ResponseBody String examine(HttpServletRequest req, @RequestBody Demands demands) {
		System.out.println("审核通过");
		busiManageBizImpl.examine(demands.getDemandID());
		return "success";
	}

	// 华清修改：雇主服务商管理需求审核不通过

	@RequestMapping("/Audited.action")
	public @ResponseBody String Audited(HttpServletRequest req, @RequestBody Demands demands) {
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

		if (forelogin != null) {
			if (forelogin.getUserStatusID() == 2) {
				flag = "fail";
			} else {
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
		users.setUserBalance(0l);
		users.setUserCredit(100l);
		users.setUserStatusID(1l);
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
	public ModelAndView usersExit(HttpServletRequest request, Users users) {
		HttpSession session = request.getSession(false);
		// 从session移除
		session.removeAttribute("forelogin");
		ModelAndView mav = new ModelAndView("../ForeLogin");
		return mav;
	}

	// 华清修改：需求管理扣除信用分
	@RequestMapping(value = "/deducTion.action", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	public @ResponseBody String violationsInsert(@RequestBody Credit credit, Users users, Violations violations) {

		violations.setViolationsTime(DateUtil.getCurrentDate());
		violations.setStickTime(DateUtil.getCurrentDate());
		violations.setViolationsWhy(credit.getCreditWhy());
		violations.setUserID(credit.getUserID());
		violations.setViolationsResult("扣除信用分:" + credit.getCreditPoints());
		System.out.println("走到了");
		System.out.println(credit.getUserID());
		System.out.println(credit.getCreditPoints());

		// System.out.println(credit.getUserID());
		// System.out.println(credit.getCreditPoints());
		users.setUserID(credit.getUserID());
		busiManageBizImpl.userCreditScore(credit);
		busiManageBizImpl.creditCreditScore(credit);
		busiManageBizImpl.violaTionCreditScore(violations);
		return "扣除成功";
	}

	// 作品管理列表 王伟杰 6-22
	@RequestMapping("/listWorks.action")
	public ModelAndView listWorks(HttpServletRequest req,
			@RequestParam(value = "pageSize", required = true, defaultValue = "5") int pageSize,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum, Condition condition) {

		PageHelper.startPage(pageNum, pageSize);
		List<Works> listWorks = busiManageBizImpl.listWorks(condition);
		PageInfo pageInfo = new PageInfo<>(listWorks, pageSize);
		System.out.println(pageInfo.getTotal());
		req.setAttribute("pageInfo", pageInfo);
		List<Classification> classlist = systemManegeBizImpl.oneclassMenu();
		req.setAttribute("classlist", classlist);
		req.setAttribute("condition", condition);
		ModelAndView mav = new ModelAndView("background/WorksList");
		return mav;
	}

	// 修改状态
	@RequestMapping("/updateWorksById.action")
	public @ResponseBody String updateWorksById(HttpServletRequest req, @RequestBody Works works) {
		int up = busiManageBizImpl.updateWorksById(works);
		return "success";
	}

	// 个人中心修改
	@RequestMapping("/usersInfo.action")
	public ModelAndView usersInfo(HttpServletRequest request, Users users) {
		Users usersList = busiManageBizImpl.updateUsersByAcc(users);
		request.setAttribute("usersList", usersList);
		ModelAndView mav = new ModelAndView("userpersonal/PersonInfo");
		return mav;
	}

	// 服务商个人信息修改-袁楠文 6-28
	@RequestMapping("/facilitatorusersInfo.action")
	public ModelAndView facilitatorusersInfo(HttpServletRequest request, Users users) {
		Users usersList = busiManageBizImpl.updateUsersByAcc(users);
		request.setAttribute("usersList", usersList);
		ModelAndView mav = new ModelAndView("/foreground/myAccount");
		return mav;
	}

	// 服务商个人中心查詢
	@RequestMapping("/Individualcenter.action")
	public ModelAndView Individualcenter(HttpServletRequest request, Users users) {
		HttpSession session = request.getSession();
		Users users2 = (Users) session.getAttribute("forelogin");
		String userAcc = users2.getUserAccount();
		users.setUserAccount(userAcc);
		Users usersList = busiManageBizImpl.SelectUsersByAcc(users);
		request.setAttribute("usersList", usersList);
		ModelAndView mav = new ModelAndView("/foreground/myAccount");
		return mav;

	}

	// 个人中心查詢
	@RequestMapping("/selectUsersByAcc.action")
	public ModelAndView SelectUsersByAcc(HttpServletRequest request, Users users) {
		HttpSession session = request.getSession();
		Users users2 = (Users) session.getAttribute("forelogin");
		String userAcc = users2.getUserAccount();
		users.setUserAccount(userAcc);
		Users usersList = busiManageBizImpl.SelectUsersByAcc(users);
		request.setAttribute("usersList", usersList);
		ModelAndView mav = new ModelAndView("userpersonal/PersonInfo");
		return mav;
	}

	// 交易明细
	@RequestMapping("/tradingList.action")
	public ModelAndView TradingList(HttpServletRequest request,
			@RequestParam(value = "pageSize", required = true, defaultValue = "5") int pageSize,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum, Condition condition) {
		HttpSession session = request.getSession();
		Users users2 = (Users) session.getAttribute("forelogin");
		condition.setClassPid(users2.getUserID().intValue());
		PageHelper.startPage(pageNum, pageSize);
		List<Trading> listTrading = busiManageBizImpl.tradingList(condition);
		PageInfo pageInfo = new PageInfo<>(listTrading, pageSize);
		System.out.println(pageInfo.getTotal());
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("condition", condition);
		ModelAndView mav = new ModelAndView("userpersonal/TradingList");
		return mav;
	}

	// by hsp 雇主发布需求 6-26 10:20
	@RequestMapping("/releaseDemand.action")
	public ModelAndView releaseDemand(HttpServletRequest req, Demands demands) {
		demands.setReleaseTime(DateUtil.getCurrentDate());
		demands.setTenderNumber(8L);
		Set<String> contentSet = SensitiveWord.checkSensitiveWord(demands.getDemandContent());
		Set<String> titleSet = SensitiveWord.checkSensitiveWord(demands.getDemandTitle());
		if (contentSet.size()!=0 || titleSet.size()!=0 ) {//说明有敏感词汇不通过
			demands.setDemandstatusid(1L);
		}else {
			demands.setDemandstatusid(2L);
		}
		busiManageBizImpl.releaseDemand(demands);
		ModelAndView mav = new ModelAndView("../foregroundindex");
		return mav;
	}

	// by hsp 个人中心 6-26 10:20
	@RequestMapping("/userPersonal.action")
	public ModelAndView userPersonal(HttpServletRequest req,
			@RequestParam(value = "pageSize", required = true, defaultValue = "5") int pageSize,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum) {
		// 根据用户ID查找用户的需求
		PageHelper.startPage(pageNum, pageSize);
		List<Demands> demandsList = busiManageBizImpl.usersDemandsList((Users) req.getSession().getAttribute("forelogin"));
		PageInfo pageInfo = new PageInfo<>(demandsList, pageSize);
		req.setAttribute("pageInfo", pageInfo);
		ModelAndView mav = new ModelAndView("userpersonal/mydemands");
		return mav;
	}

	// 信用明细
	@RequestMapping("/creditList.action")
	public ModelAndView creditList(HttpServletRequest request,
			@RequestParam(value = "pageSize", required = true, defaultValue = "5") int pageSize,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum, Condition condition) {
		HttpSession session = request.getSession();
		Users users2 = (Users) session.getAttribute("forelogin");
		String userAcc = users2.getUserAccount();
		condition.setTitle(userAcc);
		PageHelper.startPage(pageNum, pageSize);
		List<Credit> listCredit = busiManageBizImpl.creditList(condition);
		PageInfo pageInfo = new PageInfo<>(listCredit, pageSize);
		System.out.println(pageInfo.getTotal());
		request.setAttribute("pageInfo", pageInfo);
		ModelAndView mav = new ModelAndView("userpersonal/CreditList");
		return mav;
	}

	// by hsp 6-28 13:50 服务商投标
	@RequestMapping("/bidding.action")
	public @ResponseBody String bidding(HttpServletRequest req, @RequestBody Tender tender) {
		System.out.println("需求ID：" + tender.getDemandID());
		System.out.println("投标的服务商ID：" + tender.getUserID());
		System.out.println("发布需求的雇主ID：" + tender.getReleaserID());
		Tender isBidding = busiManageBizImpl.checkIsBidded(tender);
		if (isBidding != null) {// 证明该服务商已经透过该标
			return "bidded";
		} else {// 该服务商未投标，进行投标操作
				// 查找具体的需求数据
			Demands demands = busiManageBizImpl.selectDemand(tender);
			if (demands.getTenderNumber() > 0) {// 判断该需求是否已经投满
				// 1 更改需求表中 该需求的剩余投标数量， -1
				demands.setTenderNumber(demands.getTenderNumber() - 1);
				int updateTenderNumber = busiManageBizImpl.deductTenderNumber(demands);
				// 2 往tender投标需求关系表中，insert投标的数据
				int bidding = busiManageBizImpl.bidding(tender);
			} else {// 说明需求已经投满了，告知服务商该需求已无法再投标
				return "full";
			}
			return "success";
		}
	}

	// 雇主收藏 wwj 6-27 15:39
	@RequestMapping("/userServiceList.action")
	public ModelAndView userServiceList(HttpServletRequest request,
			@RequestParam(value = "pageSize", required = true, defaultValue = "5") int pageSize,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum, Condition condition) {
		HttpSession session = request.getSession();
		Users users2 = (Users) session.getAttribute("forelogin");
		condition.setClassPid(users2.getUserID().intValue());
		PageHelper.startPage(pageNum, pageSize);
		List<Users> listTrading = busiManageBizImpl.userServiceList(condition);
		PageInfo<Users> pageInfo = new PageInfo<Users>(listTrading, pageSize);
		System.out.println(pageInfo.getTotal());
		request.setAttribute("pageInfo", pageInfo);
		System.out.println("pageInfo:" + pageInfo.getList());
		request.setAttribute("condition", condition);
		ModelAndView mav = new ModelAndView("userpersonal/Collection");
		return mav;
	}

	// 服务商信用明细-袁楠文 6-28
	@RequestMapping("/facilitatorCreditList.action")
	public ModelAndView facilitatorCreditList(HttpServletRequest request,
			@RequestParam(value = "pageSize", required = true, defaultValue = "5") int pageSize,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum, Condition condition) {
		HttpSession session = request.getSession();
		Users users2 = (Users) session.getAttribute("forelogin");
		String userAcc = users2.getUserAccount();
		condition.setTitle(userAcc);
		if (condition.getClassPid() == 0) {
			condition.setClassPid(171120);
		}
		PageHelper.startPage(pageNum, pageSize);
		List<Credit> listCredit = busiManageBizImpl.creditList(condition);
		PageInfo pageInfo = new PageInfo<>(listCredit, pageSize);
		System.out.println(pageInfo.getTotal());
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("condition", condition);
		ModelAndView mav = new ModelAndView("foreground/facilitatorCredit");
		return mav;
	}

	// 服务商交易明细-袁楠文 6-28
	@RequestMapping("/facilitatortradingList.action")
	public ModelAndView facilitatorTradingList(HttpServletRequest request,
			@RequestParam(value = "pageSize", required = true, defaultValue = "5") int pageSize,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum, Condition condition) {
		HttpSession session = request.getSession();
		Users users2 = (Users) session.getAttribute("forelogin");
		String userAcc = users2.getUserAccount();
		condition.setTitle(userAcc);
		PageHelper.startPage(pageNum, pageSize);
		List<Trading> listTrading = busiManageBizImpl.tradingList(condition);
		PageInfo pageInfo = new PageInfo<>(listTrading, pageSize);
		System.out.println(pageInfo.getTotal());
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("condition", condition);
		ModelAndView mav = new ModelAndView("foreground/facilitatorTrading");
		return mav;
	}

	// by hsp 6-28 20：50 服务商查看自己已投过的标 列表
	@RequestMapping("/serverBidsList.action")
	public ModelAndView serverBidsList(HttpServletRequest request,
			@RequestParam(value = "pageSize", required = true, defaultValue = "5") int pageSize,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum, Condition condition) {
		HttpSession session = request.getSession();
		Users users = (Users) session.getAttribute("forelogin");
		PageHelper.startPage(pageNum, pageSize);
		List<Demands> demandsList = busiManageBizImpl.serversBidsList(users);
		PageInfo pageInfo = new PageInfo<>(demandsList, pageSize);
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("condition", condition);
		ModelAndView mav = new ModelAndView("serverpersonal/serverBids");
		return mav;
	}

	// by hsp 6-30 15:36 雇主查看需求的投标者
	
	@RequestMapping(value = "/findTender.action", produces = "application/json; charset=utf-8")
	public @ResponseBody String findTender(HttpServletRequest req, @RequestBody Demands demands) {
		List<Users> serverList = busiManageBizImpl.biddedServerList(demands);
		Gson gson = new Gson();
		String serverListJson = gson.toJson(serverList);
		return serverListJson;
	}

	// by hsp 6-30 16:24 雇主選擇投标者
	@RequestMapping(value = "/chooseTender.action", produces = "application/json; charset=utf-8")
	public @ResponseBody String chooseTender(HttpServletRequest req, @RequestBody Demands demands) {
		int i = busiManageBizImpl.chooseTender(demands);
		if (i != 0) {
			return "success";
		}
		return "error";
	}

	// by hsp 7-1 12:45 雇主确认收货
	@RequestMapping(value = "/confirmReceipt.action", produces = "application/json; charset=utf-8")
	public @ResponseBody String confirmReceipt(HttpServletRequest req, @RequestBody Demands demands) {
		Users users = (Users) req.getSession().getAttribute("forelogin");
		String flag = busiManageBizImpl.confirmReceipt(demands, users);
		return flag;
	}

	// by hsp 7-1 14:31 服务商发货
	@RequestMapping(value = "/sendGood.action", produces = "application/json; charset=utf-8")
	public @ResponseBody String sendGood(HttpServletRequest req, @RequestBody Demands demands) {
		return busiManageBizImpl.sendGood(demands);
	}

	// 雇主合作 wwj 6-28 11:31
	@RequestMapping("/cooperationList.action")
	public ModelAndView cooperationList(HttpServletRequest request,
			@RequestParam(value = "pageSize", required = true, defaultValue = "5") int pageSize,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum, Condition condition) {
		HttpSession session = request.getSession();
		Users users2 = (Users) session.getAttribute("forelogin");
		String userAcc = users2.getUserAccount();
		condition.setClassPid(users2.getUserID().intValue());
		PageHelper.startPage(pageNum, pageSize);
		List<Users> listTrading = busiManageBizImpl.cooperationList(condition);
		PageInfo<Users> pageInfo = new PageInfo<Users>(listTrading, pageSize);
		System.out.println(pageInfo.getTotal());
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("condition", condition);
		ModelAndView mav = new ModelAndView("userpersonal/Cooperation");
		return mav;
	}

	// 验证当前密码 wwj 6-30
	@RequestMapping("/SelectpwdByAcc.action")
	public @ResponseBody String SelectpwdByAcc(HttpServletRequest request, @RequestBody Users users) {
		String flag = "error";
		HttpSession session = request.getSession();
		Users users2 = (Users) session.getAttribute("forelogin");
		String pwd = users2.getUserPwd();
		if (pwd.equals(users.getUserPwd())) {
			flag = "success";
		} else {
			flag = "error";
		}
		return flag;
	}

	// 确认密码 wwj 6-30
	@RequestMapping("/confirmPwd.action")
	public @ResponseBody String ConfirmPwd(HttpServletRequest request, @RequestBody Condition condition) {
		String flag = "error";
		if (condition.getStartDate().equals(condition.getEndDate())) {
			flag = "success";
		} else {
			flag = "error";
		}
		return flag;
	}

	//
	// 确认密码 wwj 6-30
	@RequestMapping("/updateUsersPwdById.action")
	public @ResponseBody String updateUsersPwdById(HttpServletRequest request, @RequestBody Users users) {
		HttpSession session = request.getSession();
		Users users2 = (Users) session.getAttribute("forelogin");
		String userAcc = users2.getUserAccount();
		users.setUserAccount(userAcc);
		busiManageBizImpl.updateUsersPwdById(users);
		return "success";
	}

	// 修改密码页面 wwj 6-30
	@RequestMapping("/UpdatePwd.action")
	public ModelAndView UpdatePwd(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView("userpersonal/UpdatePwd");
		return mav;
	}

	// 服务商详情
	@RequestMapping("/serviceDetails.action")
	public ModelAndView ServiceDetails(HttpServletRequest request, Users users) {
		Users Service = busiManageBizImpl.serviceDetails(users);
		request.setAttribute("Service", Service);
		List<Works> works = busiManageBizImpl.serviceWorks(users);
		request.setAttribute("works", works);
		ModelAndView mav = new ModelAndView("userpersonal/ServiceDetails");
		return mav;
	}

	// 服务商-我发布的作品数据 -袁楠文 6-29 9:41
	@RequestMapping("/MyforegroundList.action")
	public ModelAndView MyforegroundList(HttpServletRequest request,
			@RequestParam(value = "pageSize", required = true, defaultValue = "3") int pageSize,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum, Condition condition) {
		HttpSession session = request.getSession();
		Users users2 = (Users) session.getAttribute("forelogin");
		int userid = users2.getUserID().intValue();
		condition.setClassPid(userid);
		PageHelper.startPage(pageNum, pageSize);
		List<Workinformation> myworkinfolist = portalBizImpl.MyforegroundList(condition);
		PageInfo pageInfo = new PageInfo<>(myworkinfolist, pageSize);
		System.out.println(pageInfo.getTotal());
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("condition", condition);
		request.setAttribute("myworkinfolist", myworkinfolist);
		ModelAndView mav = new ModelAndView("Myforeground");
		return mav;
	}
	// 服务商-作品上架/下架 -袁楠文 6-30 11:15
	@RequestMapping("/Workoffshelf.action")
	public @ResponseBody String Workoffshelf(HttpServletRequest request,Condition condition) {
		String flg="error";
		int workid=Integer.valueOf(request.getParameter("workid"));
		int workstypeid=Integer.valueOf(request.getParameter("workstypeid"));
		condition.setClassPid(workid);
		condition.setBeWorksPrice(workstypeid);
		int Workoffshelfnum = portalBizImpl.Workoffshelf(condition);
		if (Workoffshelfnum!=0) {
			flg="success";
		}
		return flg;
	}
	
	// 服务商-作品删除 -袁楠文 6-30 12:45
	@RequestMapping("/Worksdel.action")
	public @ResponseBody String Worksdel(HttpServletRequest request,Condition condition) {
		String flg="error";
		int workid=Integer.valueOf(request.getParameter("workid"));
		condition.setClassPid(workid);
		int Workoffshelfnum = portalBizImpl.Worksdel(condition);
		if (Workoffshelfnum!=0) {
			flg="success";
		}
		return flg;
	}
	
	// 服务商-作品查找 -袁楠文 6-30 13:15
		@RequestMapping(value="/Workmodification.action", produces = "application/json; charset=utf-8")
		public @ResponseBody String Workmodification(HttpServletRequest request,Condition condition) {
			String flg="error";
			int workid=Integer.valueOf(request.getParameter("workid"));
			condition.setClassPid(workid);
			List<Workinformation> Workoffshelfinfo = portalBizImpl.Workmodification(condition);
			if (Workoffshelfinfo.size()!=0) {
				Gson gson=new Gson();
				flg=gson.toJson(Workoffshelfinfo);
			}
			return flg;
		}
		
	// 服务商-作品修改 -袁楠文 6-30 15:35
		@RequestMapping("/Modificationofwork.action")
		public @ResponseBody String Modificationofwork(@RequestBody Works works) {
			String flg="error";
			System.out.println(works.getWorksId());
			int Workoffshelfnum = portalBizImpl.Modificationofwork(works);
			if (Workoffshelfnum!=0) {
				flg="success";
			}
			return flg;
		}
}
