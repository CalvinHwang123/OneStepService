package oss.biz;

import java.util.List;

import oss.bean.Condition;
import oss.bean.UserStory;
import oss.bean.Violations;

/*
 * 前端门户Biz业务接口
 */
public interface PortalBiz {

	// 曝光台列表 by hlq 2018-06-16 13:18
	public List<Violations> violationsList(Condition condition);
	
	
	
}
