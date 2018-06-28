package oss.biz;

import java.util.List;

import oss.bean.Condition;
import oss.bean.Credit;
import oss.bean.Users;
import oss.bean.Violations;
import oss.bean.Works;
import oss.bean.Demands;
import oss.bean.Trading;

/*
 * 业务管理Biz业务接口
 */
public interface BusiManageBiz {

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

	// 华清修改：查询需求列表
	public List<Demands> demandList(Condition condition);

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

	// 作品管理修改状态 wwj
	public abstract int updateWorksById(Works works);

	// 个人信息修改 wwj
	public abstract Users updateUsersByAcc(Users users);

	// 作品管理列表 wwj
	public List<Works> listWorks(Condition condition);

	// 个人信息查詢 wwj
	public abstract Users SelectUsersByAcc(Users users);

	// by hsp 雇主发布需求 6-26 10:20
	public int releaseDemand(Demands demands);
	
	// 交易明细
	public List<Trading> tradingList(Condition condition);
	
	// 信用明细
		public List<Credit> creditList(Condition condition);
}
