package oss.mapper;

import java.util.List;

import oss.annotation.MyRepository;
import oss.bean.Condition;
import oss.bean.Demands;
import oss.bean.Rulee;
import oss.bean.Workinformation;


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

	// 华清修改：前端需求详情
	public Demands demandDetailsList(Demands demands);
}
