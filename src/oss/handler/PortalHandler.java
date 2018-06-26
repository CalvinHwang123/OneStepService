package oss.handler;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;

import oss.bean.Classification;
import oss.bean.Condition;
import oss.bean.Rulee;
import oss.bean.SuccessCase;
import oss.bean.Credit;
import oss.bean.Demands;
import oss.bean.UserStory;
import oss.bean.Users;
import oss.bean.Violations;
import oss.bean.Violations2;
import oss.bean.Workinformation;
import oss.biz.PortalBiz;
import oss.biz.PortalManageBiz;
import oss.biz.SystemManegeBiz;

/*
 * 门户Handler
 */

@Controller
@RequestMapping("/Portal")
public class PortalHandler {

	@Resource
	private PortalManageBiz portalManageBizImpl;
	@Resource
	private PortalBiz portalBizImpl;
	@Resource
	private SystemManegeBiz systemManegeBizImpl;

	// 前端规则中心页面跳转
	@RequestMapping("/ruleList.action")
	public ModelAndView ruleList(HttpServletRequest req) {

		// 在这里调用PageHelper类的静态方法，后面要紧跟Mapper查询数据库的方法

		List<Rulee> ruleList = portalManageBizImpl.ruleList();
		// // 把查询结果，封装成pageInfo对象，该对象中包含了该数据库中的许多参数，包括记录总条数等
		//
		req.setAttribute("ruleList", ruleList);

		ModelAndView mav = new ModelAndView("rule");
		return mav;
	}
	// 前端规则内容页面跳转

	@RequestMapping("/conTentList.action")
	public ModelAndView userStory(HttpServletRequest req, Rulee rulee) {
		Rulee rule = portalManageBizImpl.conTentList(rulee);
		req.setAttribute("rule", rule);
		ModelAndView mav = new ModelAndView("conTent");
		return mav;
	}

	// 获取雇主故事列表 黄绍鹏6-19 10:23
	@RequestMapping("/userStoryList.action")
	public ModelAndView userStoryList(HttpServletRequest req,
			@RequestParam(value = "pageSize", required = true, defaultValue = "9") int pageSize,
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

	// 前端曝光台请求 by hlq 2018-06-16 13:36
	@RequestMapping("/foreViolationsList.action")
	public ModelAndView foreViolationsList(HttpServletRequest req,
			@RequestParam(value = "pageSize", required = true, defaultValue = "10") int pageSize,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum) {
		// 雇主违规列表
		PageHelper.startPage(pageNum, pageSize);
		List<Violations> violationsList = portalBizImpl.listViolationsDesc(1);
		// 把查询结果，封装成pageInfo对象，该对象中包含了该数据库中的许多参数，包括记录总条数等
		PageInfo<Violations> pageInfo = new PageInfo<>(violationsList, pageSize);
		System.out.println(pageInfo.getTotal());
		req.setAttribute("pageInfo", pageInfo);
		// 服务商违规列表
		PageHelper.startPage(pageNum, pageSize);
		List<Violations> violationsList2 = portalBizImpl.listViolationsDesc(2);
		// 把查询结果，封装成pageInfo对象，该对象中包含了该数据库中的许多参数，包括记录总条数等
		PageInfo<Violations> pageInfo2 = new PageInfo<>(violationsList2, pageSize);
		System.out.println(pageInfo2.getTotal());
		req.setAttribute("pageInfo2", pageInfo2);
		// 雇主处罚原因列表
		List<Violations2> map = portalBizImpl.listViolationsGroupByWhy(1);
		System.out.println("map 长度：" + map.size());
		String vioWhyList = new Gson().toJson(map);
		req.setAttribute("vioWhyList", vioWhyList);
		// 服务商处罚原因列表
		List<Violations2> map2 = portalBizImpl.listViolationsGroupByWhy(2);
		System.out.println("map 长度：" + map2.size());
		String vioWhyList2 = new Gson().toJson(map2);
		req.setAttribute("vioWhyList2", vioWhyList2);

		List<Violations> stickList = portalBizImpl.listStickViolations(1);
		System.out.println("stickList 长度：" + stickList.size());
		req.setAttribute("stickList", stickList);

		List<Violations> stickList2 = portalBizImpl.listStickViolations(2);
		System.out.println("stickList2 长度：" + stickList2.size());
		req.setAttribute("stickList2", stickList2);

		ModelAndView mav = new ModelAndView("foreground/foreViolations");
		return mav;
	}

	// 前端ajax请求所有处罚翻页 by hlq 2018-06-17 12:02 返回json
	@RequestMapping(value = "/foreViolationsPage.action", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	public @ResponseBody PageInfo<Violations> foreViolationsPage(@RequestBody Violations pageNum) {
		// 每页默认为10条数据
		PageHelper.startPage(pageNum.getViolationsID().intValue(), 10);
		// 获取用户类型
		int userType = pageNum.getUsers().getUserType().intValue();
		List<Violations> violationsList = portalBizImpl.listViolationsDesc(userType);
		// 把查询结果，封装成pageInfo对象，该对象中包含了该数据库中的许多参数，包括记录总条数等
		PageInfo<Violations> pageInfo = new PageInfo<>(violationsList, 10);
		return pageInfo;
	}

	// 前端信用查询请求 hlq 2018-06-21 11:53
	@RequestMapping("/creditQuery")
	public ModelAndView creditQuery(HttpServletRequest request,

		@RequestParam(value = "pageSize", required = true, defaultValue = "5")int pageSize,
		@RequestParam(value = "pageNum", required = true, defaultValue = "1")int pageNum,Condition condition) {
		System.out.println("portalBizImpl=" + portalBizImpl);
		System.out.println("condition=" + condition.getTitle());
		if (null != condition.getTitle()) {
			// 在这里调用PageHelper类的静态方法，后面要紧跟Mapper查询数据库的方法
			PageHelper.startPage(pageNum, pageSize);
//			condition.setTitle("吴华清");
			List<Credit> creditList = portalBizImpl.listCreditByName(condition);
			// 把查询结果，封装成pageInfo对象，该对象中包含了该数据库中的许多参数，包括记录总条数等
			PageInfo<Credit> pageInfo = new PageInfo<>(creditList, pageSize);
			System.out.println(pageInfo.getTotal());
			request.setAttribute("pageInfo", pageInfo);
			request.setAttribute("condition", condition);
		}
		return new ModelAndView("foreground/creditQuery");
	}

	
	// 根据搜索关键词列出搜索建议 by hlq 2018-06-22 9:41
	@RequestMapping(value = "/creditQuerySuggest.action", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	public @ResponseBody List<String> creditQuerySuggest(@RequestBody Users users) {
		List<String> userNameList = portalBizImpl.listSuggestUserByKey(users);
		return userNameList;
	}


	// 前端 作品 数据 袁楠文 2018-6-19 22:45
	@RequestMapping("/workInfoList")
	public ModelAndView workInfoList(HttpServletRequest request,
			@RequestParam(value = "pageSize", required = true, defaultValue = "12") int pageSize,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum, Condition condition) {

		PageHelper.startPage(pageNum, pageSize);
		List<Workinformation> workinfolist = portalBizImpl.workInfoList(condition);

		List<Classification> oneclassmenulist = systemManegeBizImpl.oneclassMenu();
		List<Classification> twoclassmenulist = systemManegeBizImpl.twoclassMenu();

		PageInfo pageInfo = new PageInfo<>(workinfolist, pageSize);
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("oneclassmenulist", oneclassmenulist);
		request.setAttribute("twoclassmenulist", twoclassmenulist);

		String worksPrice = condition.getBeWorksPrice() + "-" + condition.getEndWorksPrice();
		request.setAttribute("worksPrice", worksPrice);

		request.setAttribute("beWorksPrice", condition.getBeWorksPrice());
		request.setAttribute("endWorksPrice", condition.getEndWorksPrice());
		request.setAttribute("classPid", condition.getClassPid());
		request.setAttribute("checkbox", condition.getStartDate());
		request.setAttribute("looktitle", condition.getTitle());
		request.setAttribute("condition", condition);
		ModelAndView classification = new ModelAndView("/foreground/worksindex");
		return classification;
	}

	// 前端 作品 详情数据 袁楠文 2018-6-23 21:45
	@RequestMapping("/worksIntroduction")
	public ModelAndView worksIntroduction(HttpServletRequest request
			,@RequestParam(value = "worksId", required = true, defaultValue = "empty") Long worksId) {
		System.out.println("进入-"+worksId+"-详情");
		
		List<Workinformation> workinfolist = portalBizImpl.worksIntroduction(worksId);
		request.setAttribute("worksIntroduction", workinfolist);
		
		ModelAndView worksIntroduction = new ModelAndView("/foreground/worksIntroduction");
		return worksIntroduction;
	}


	// 前端 作品 按价格分类 袁楠文 2018-6-21 11:09
	@RequestMapping("/classpricevaluelook")
	public ModelAndView classpricevaluelook(HttpServletRequest request,
			@RequestParam(value = "pageSize", required = true, defaultValue = "12") int pageSize,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum, Condition condition) {
		String classpricevalue = request.getParameter("classpricevalue");

		System.out.println(classpricevalue.split("-")[0] + "-" + classpricevalue.split("-")[1]);

		/*
		 * PageHelper.startPage(pageNum, pageSize); List<Workinformation> workinfolist =
		 * portalBizImpl.workInfoList(condition);
		 * 
		 * List<Classification> oneclassmenulist = systemManegeBizImpl.oneclassMenu();
		 * List<Classification> twoclassmenulist = systemManegeBizImpl.twoclassMenu();
		 * 
		 * PageInfo pageInfo = new PageInfo<>(workinfolist, pageSize);
		 * request.setAttribute("pageInfo", pageInfo);
		 * request.setAttribute("oneclassmenulist", oneclassmenulist);
		 * request.setAttribute("twoclassmenulist", twoclassmenulist); ModelAndView
		 * classification = new ModelAndView("worksindex"); return classification;
		 */
		return null;

	}

	// 查询成功案例列表 by hsp 6-20 22:26
	@RequestMapping("/successCaseList.action")
	public ModelAndView successCaseList(HttpServletRequest req,
			@RequestParam(value = "pageSize", required = true, defaultValue = "5") int pageSize,
			@RequestParam(value = "pageNum", required = true, defaultValue = "1") int pageNum, Condition condition) {
		PageHelper.startPage(pageNum, pageSize);
		List<SuccessCase> successCaseList = portalManageBizImpl.successCaseList(condition);
		PageInfo pageInfo = new PageInfo<>(successCaseList, pageSize);
		req.setAttribute("pageInfo", pageInfo);
		req.setAttribute("condition", condition);
		ModelAndView mav = new ModelAndView("foreground/successcase");
		return mav;
	}

	// 单个成功案例 by hsp 6-21 11:24
	@RequestMapping("/successCase.action")
	public ModelAndView successCase(HttpServletRequest req, SuccessCase successCase) {
		SuccessCase singleCase = portalManageBizImpl.successCase(successCase);
		req.setAttribute("singleCase", singleCase);
		System.out.println(singleCase.getSuccessCaseTitle());
		System.out.println(singleCase.getSuccessCaseTime());
		System.out.println(singleCase.getSuccessCaseContext());
		ModelAndView mav = new ModelAndView("foreground/singlesuccesscase");
		return mav;
	}

}
