package oss.handler;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import oss.bean.Logs;
import oss.biz.LogsBiz;

@Controller
@RequestMapping("/logs")
public class LogsHandler {
	
	@Resource
	private LogsBiz logsBizImpl;
	
	@RequestMapping("/logsList.action")
	public ModelAndView logsList(HttpServletRequest req) {
		System.out.println("logsBizImpl=" + logsBizImpl);
		int pageNum=2;//当前显示的页码
		int pageSize=5;//每一页显示的数据条数
		//在这里调用PageHelper类的静态方法，后面要紧跟Mapper查询数据库的方法
		PageHelper.startPage(pageNum, pageSize);
		List<Logs> logsList = logsBizImpl.logsList();
		//把查询结果，封装成pageInfo对象，该对象中包含了该数据库中的许多参数，包括记录总条数等
		PageInfo pageInfo=new PageInfo<>(logsList,pageSize);
		System.out.println(pageInfo.getTotal());
		req.setAttribute("pageInfo", pageInfo);
		ModelAndView mav = new ModelAndView("logslist");
		return mav;
	}

}
