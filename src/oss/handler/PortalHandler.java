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

import oss.bean.Classification;
import oss.bean.Condition;
import oss.bean.UserStory;
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
	
	// 前端 作品 数据 袁楠文 2018-6-19 22:45
	@RequestMapping("/workInfoList")
	public ModelAndView workInfoList(HttpServletRequest request,
		@RequestParam(value = "pageSize", required = true, defaultValue = "12")int pageSize,
		@RequestParam(value = "pageNum", required = true, defaultValue = "1")int pageNum,Condition condition) {
		
		PageHelper.startPage(pageNum, pageSize);
		List<Workinformation> workinfolist = portalBizImpl.workInfoList(condition);
		
		List<Classification> oneclassmenulist = systemManegeBizImpl.oneclassMenu();
		List<Classification> twoclassmenulist = systemManegeBizImpl.twoclassMenu();
		
		PageInfo pageInfo = new PageInfo<>(workinfolist, pageSize);
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("oneclassmenulist", oneclassmenulist);
		request.setAttribute("twoclassmenulist", twoclassmenulist);
		ModelAndView classification = new ModelAndView("worksindex");
		return classification;
	}
	
	// 前端 作品 按价格分类 袁楠文 2018-6-21 11:09
	@RequestMapping("/classpricevaluelook")
	public ModelAndView classpricevaluelook(HttpServletRequest request,
		@RequestParam(value = "pageSize", required = true, defaultValue = "12")int pageSize,
		@RequestParam(value = "pageNum", required = true, defaultValue = "1")int pageNum,Condition condition) {
			String classpricevalue=request.getParameter("classpricevalue");
			
		System.out.println(classpricevalue.split("-")[0]+"-"+classpricevalue.split("-")[1]);
		
		/*PageHelper.startPage(pageNum, pageSize);
		List<Workinformation> workinfolist = portalBizImpl.workInfoList(condition);
		
		List<Classification> oneclassmenulist = systemManegeBizImpl.oneclassMenu();
		List<Classification> twoclassmenulist = systemManegeBizImpl.twoclassMenu();
		
		PageInfo pageInfo = new PageInfo<>(workinfolist, pageSize);
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("oneclassmenulist", oneclassmenulist);
		request.setAttribute("twoclassmenulist", twoclassmenulist);
		ModelAndView classification = new ModelAndView("worksindex");
		return classification;*/
		return null;
	}
}
