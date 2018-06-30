package oss.biz;

import java.util.List;

import oss.bean.Condition;
import oss.bean.Credit;
import oss.bean.Demands;
import oss.bean.Orders;
import oss.bean.Tender;
import oss.bean.Trading;
import oss.bean.Users;
import oss.bean.Violations;
import oss.bean.Works;
import oss.bean.userService;

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

	// 收藏
	public List<userService> userServiceList(Condition condition);

	// by hsp 6-28 11:05 检查服务商是否投过该需求的标
	public Tender checkIsBidded(Tender tender);

	// by hsp 6-28 11:25 查找具体的需求
	public Demands selectDemand(Tender tender);

	// by hsp 6-28 11:36投标成功后，需求的剩余投标数量-1
	public int deductTenderNumber(Demands demands);

	// by hsp 6-28 11:58投标成功，往投标需求关系表Tender中插入数据
	public int bidding(Tender tender);
	
	//合作  wwj  6-28
		public List<userService> cooperationList(Condition condition);
	
	// 发布作品 hlq 2018-06-27 20:22
	public boolean publishWorks(Works works);
	// 修改成交量 hlq
	public boolean updateWorksNumById(Works works);
	
	// by hsp 6-28 20：50 服务商查看自己已投过的标  列表
	public List<Demands> serversBidsList(Users users);
	
	// 增加订单 hlq 2018-06-29 11:19
	public boolean addOrders(Orders orders);
	// 修改用户余额 hlq 2018-06-29 14:08
	public boolean updateUserBalanceById(Users users);
	// 根据作品id获取作品信息 hlq 2018-06-29 14:15
	Works selectWorksById(Long worksId);
	// 添加交易记录 hlq 2018-06-29 14:58
	boolean AddTrading(Trading trading);
	
	// 根据用户id查询订单作品信息
	List<Orders> selectOrderWorksByUserId(Condition condition);
}
