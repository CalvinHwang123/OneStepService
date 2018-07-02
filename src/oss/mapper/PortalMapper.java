package oss.mapper;

import java.util.List;

import oss.annotation.MyRepository;
import oss.bean.Condition;
import oss.bean.Demands;
import oss.bean.Rulee;
import oss.bean.Users;
import oss.bean.Workinformation;
import oss.bean.Works;


/*
 * 前端门户Mapper接口
 */
@MyRepository
public interface PortalMapper {

	// 前端 作品 数据 袁楠文 2018-6-19 22:45
	public List<Workinformation> workInfoList(Condition condition);

	// 前端 作品 详情数据 袁楠文 2018-6-23 21:45
	public List<Workinformation> worksIntroduction(Long worksId);

	// 华清修改 前端需求大厅列表
	public List<Demands> beforeDemandsList(Condition condition);
	
	// 华清修改 前端服务商大厅列表
	public List<Users> serviceProviders(Condition condition);

	// 华清修改：前端需求详情
	public Demands demandDetailsList(Demands demands);


	// 服务商-我发布的作品数据 -袁楠文 6-29 9:41
	public List<Workinformation> MyforegroundList(Condition condition);

	// 服务商-作品下架 -袁楠文 6-30 11:15
	public int Workoffshelf(Condition condition);

	// 服务商-作品删除 -袁楠文 6-30 12:45
	public int Worksdel(Condition condition);

	// 服务商-作品查找 -袁楠文 6-30 13:15
	public List<Workinformation> Workmodification(Condition condition);

	// 服务商-作品修改 -袁楠文 6-30 15:35
	public int Modificationofwork(Works works);

	
	// 华清修改：前端服务商详情
	public Users serviceProvidersDetailsList(Users users);

}
