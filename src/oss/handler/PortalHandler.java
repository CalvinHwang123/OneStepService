package oss.handler;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageInfo;

import oss.bean.Condition;
import oss.bean.Workinformation;
import oss.biz.PortalBiz;


/*
 * 门户Handler
 */

@Controller
@RequestMapping("/Portal")
public class PortalHandler {
	
	@Resource
	private PortalBiz portalBizImpl;
	
	// 前端 作品 数据 袁楠文 2018-6-19 22:45
	@RequestMapping("/workInfoList")
	public ModelAndView workInfoList(HttpServletRequest request,
		@RequestParam(value = "pageSize", required = true, defaultValue = "5")int pageSize,
		@RequestParam(value = "pageNum", required = true, defaultValue = "1")int pageNum,Condition condition) {
		
		List<Workinformation> workinfolist = portalBizImpl.workInfoList(condition);
		PageInfo pageInfo = new PageInfo<>(workinfolist, pageSize);
		request.setAttribute("pageInfo", pageInfo);
		ModelAndView classification = new ModelAndView("worksindex");
		return classification;
	}
}
