package oss.biz;

import java.util.List;

import oss.bean.Condition;
import oss.bean.UserStory;
import oss.bean.Credit;
import oss.bean.Demands;
import oss.bean.Users;
import oss.bean.Violations;
import oss.bean.Workinformation;
import oss.bean.Works;
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

	// 前端 作品 详情数据 袁楠文 2018-6-23 21:45
	List<Workinformation> worksIntroduction(Long worksId);

	// 根据搜索关键词列出搜索建议 by hlq 2018-06-22 9:41
	public List<String> listSuggestUserByKey(Users users);

	// 根据用户名查询信用明细 hlq 2018-06-21 14:13
	public List<Credit> listCreditByName(Condition condition);

	// 华清修改 前端需求大厅列表
	public List<Demands> beforeDemandsList(Condition condition);
	// 华清修改 前端服务商大厅列表
		public List<Users> serviceProviders(Condition condition);

	// 华清修改：前端需求详情
	public Demands demandDetailsList(Demands demands);
	// 华清修改：前端服务商详情
		public Users serviceProvidersDetailsList(Users users);

	// 服务商-我发布的作品数据 -袁楠文 6-29 9:41
	public List<Workinformation> MyforegroundList(Condition condition);

	// 服务商-作品下架 -袁楠文 6-30 11:15
	int Workoffshelf(Condition condition);

	// 服务商-作品删除 -袁楠文 6-30 12:45
	int Worksdel(Condition condition);

	// 服务商-作品查找 -袁楠文 6-30 13:15
	List<Workinformation> Workmodification(Condition condition);

	// 服务商-作品修改 -袁楠文 6-30 15:35
	int Modificationofwork(Works works);

}
