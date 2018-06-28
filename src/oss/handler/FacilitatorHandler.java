package oss.handler;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import oss.bean.Works;
import oss.biz.BusiManageBiz;
import oss.biz.FacilitatorBiz;


/*
 * 服务商Handler
 */
@Controller
@RequestMapping("/Facilitator")
public class FacilitatorHandler {
	
	@Resource
	private FacilitatorBiz facilitatorBizImpl;
	@Resource
	private BusiManageBiz busiManageBizImpl;
	
	// 发布作品 hlq 2018-06-27 14:53
	@RequestMapping("/publishWorks.action")
	public ModelAndView publishWorks(HttpServletRequest req, 
			Works works) {
		System.out.println("facilitatorBizImpl=" + facilitatorBizImpl);
		System.out.println("publishWorks action....");
		
		String filePath = req.getSession().getServletContext().getRealPath("/") 
				+"upload\\"+works.getUrl();
		works.setUrl(filePath);
		works.setWorksNum(0L);
		works.setWorksStatusId(1L);
		busiManageBizImpl.publishWorks(works);
		
		ModelAndView mav = new ModelAndView("foreground/successcase");
		return mav;
	}

}
