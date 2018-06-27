package oss.mapper;

import java.util.List;
import oss.annotation.MyRepository;
import oss.bean.Condition;
import oss.bean.Credit;
import oss.bean.Links;
import oss.bean.Trading;
import oss.bean.Users;
import oss.bean.Violations;
import oss.bean.Works;
import oss.bean.Demands;

/*
 * 业务管理Mapper接口
 */
@MyRepository
public interface BusiManageMapper {

	// 前台登入 wwj 6-17
	public abstract Users ForeLogin(Users users);

	// 前台注册 王伟杰 6-17
	public abstract int AddUsers(Users users);

	// 唯一性验证 wwj 6-17
	public abstract List<Users> SelectName(Users users);

	// 华清修改：查询雇主列表信息
	public List<Users> listUser(Condition condition);

	// 华清修改：查询服务商列表信息
	public List<Users> providerList(Condition condition);

	// 华清修改：重置密码
	public int updatePow(long lo);

	// 华清修改：加入黑名单
	public int Blacklist(long lo);

	// 华清修改：取消黑名单
	public int cancelBlacklist(long lo);

	// 华清修改：禁用
	public int Disable(long lo);

	// 华清修改：启用
	public int enable(long lo);

	// 华清修改：查询需求列表
	public List<Demands> demandList(Condition condition);

	// 华清修改：审核通过
	public int examine(long examine);

	// 华清修改：审核不通过
	public int Audited(long audited);

	// 华清修改：扣除用户信用分
	public int userCreditScore(Credit credit);

	// 华清修改：明细表信用
	public int creditCreditScore(Credit credit);

	// 华清修改：违规表违规
	public int violaTionCreditScore(Violations violations);

	// 作品管理列表 wwj
	public List<Works> listWorks(Condition condition);

	// 作品管理修改状态 wwj
	public abstract int updateWorksById(Works works);
	
	//by hsp 发布需求 	6-26 10:20
	public int insertDemand(Demands demands);

	//个人信息修改  wwj
	public abstract int updateUsersByAcc(Users users);
	
	//个人信息查詢  wwj
		public abstract Users SelectUsersByAcc(Users users);
		
		//交易明细
	// 作品管理列表 wwj
		public List<Trading> tradingList(Condition condition);


}
