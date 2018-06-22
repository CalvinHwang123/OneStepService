package oss.biz;

import java.util.List;

import oss.bean.Condition;
import oss.bean.Credit;
import oss.bean.Users;
import oss.bean.Violations;
import oss.bean.Workinformation;
import oss.bean.Violations2;

/*
 * 前端门户Biz业务接口
 */
public interface PortalBiz {
	// 前端 作品 数据 袁楠文 2018-6-19 22:45
	List<Workinformation> workInfoList(Condition condition);

	// 前端违规列表 hlq 2018-6-19 10:26
	List<Violations> listViolationsDesc(int userType);
	List<Violations2> listViolationsGroupByWhy(int userType);
	List<Violations> listStickViolations(int userType);
	
	// 根据搜索关键词列出搜索建议 by hlq 2018-06-22 9:41
	public List<String> listSuggestUserByKey(Users users);
	
	// 根据用户名查询信用明细 hlq 2018-06-21 14:13
	public List<Credit> listCreditByName(Condition condition);
}
