package oss.biz;

import java.util.List;

import oss.bean.Condition;
import oss.bean.Workinformation;

/*
 * 前端门户Biz业务接口
 */
public interface PortalBiz {
	// 前端 作品 数据 袁楠文 2018-6-19 22:45
	List<Workinformation> workInfoList(Condition condition);

}
