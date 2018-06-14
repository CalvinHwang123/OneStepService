package oss.handler;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.junit.Test;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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

	// jhx 获取权限列表 2018-6-14 9:00
	@Test
	@RequestMapping("/powerList.action")
	public List<Powers> powerList(HttpServletRequest req) {
		List<Powers> powerList = systemManegeBizImpl.powerList();
		System.out.println("powerList===" + powerList);
		return powerList;
	}

}
