package oss.mapper;

import java.util.List;

import oss.annotation.MyRepository;
import oss.bean.Condition;
import oss.bean.Credit;
import oss.bean.Demands;
import oss.bean.Tender;
import oss.bean.Trading;
import oss.bean.Users;
import oss.bean.Violations;
import oss.bean.Works;
import oss.bean.userService;

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

	// by hsp 发布需求 6-26 10:20
	public int insertDemand(Demands demands);

	// 个人信息修改 wwj
	public abstract int updateUsersByAcc(Users users);

	// 个人信息查詢 wwj
	public abstract Users SelectUsersByAcc(Users users);

	// 交易明细
	public List<Trading> tradingList(Condition condition);

	// 信用明细
	public List<Credit> creditList(Condition condition);

	// 收藏
	public List<userService> userServiceList(Condition condition);

	// by hsp 6-28 11:05 检查服务商是否投过该需求的标
	public Tender selectTenderByID(Tender tender);

	// by hsp 6-28 11:25 查找具体的需求
	public Demands selectDemandByID(Tender tender);

	// by hsp 6-28 11:36投标成功后，需求的剩余投标数量-1
	public int updateDemandTenderNumber(Demands demands);

	// by hsp 6-28 11:58投标成功，往投标需求关系表Tender中插入数据
	public int insertTender(Tender tender);

	// 合作
	public List<userService> cooperationList(Condition condition);

	// 插入作品表记录 hlq 2018-06-27 21:39
	public int insertWorks(Works works);

	// 作品修改成交量 hlq 2018-06-27 21:39
	public abstract int updateWorksNumById(Works works);

	// by hsp 6-28 20：50 服务商查看自己已投过的标 列表
	public List<Demands> selectBidsByServerID(Users users);

	// by hsp 6-29 15:34 雇主查找自己所发布的所有需求
	public List<Demands> demandsByUserID(Users users);

	// by hsp 6-30 15:41雇主根据需求ID查找投过标的服务商
	public List<Users> selectServerByDemandID(Demands demands);

	// by hsp 6-30 20:35 雇主選擇中標者，更改需求状态以及填入中标者ID
	public int updateDemandStatusToTender(Demands demands);

	// by hsp 7-1 12:45 雇主确认收货
	public int updateDemandStatusToConfirmReceipt(Demands demands);
	
	// by hsp 7-1 13:58 查看雇主余额是否足够付款
	public Users isSufficientFunds(Demands demands);
	
//	by hsp 7-1 14:04 雇主确认收获后，扣款
	public int deductUsersBalance(Users users);
	
//	by hsp 7-1 14:15 增加服务商余额
	public int addServerBalance(Demands demands);

	//by hsp 7-1 14：24 获取服务商的余额 
	public Long serverBalance(Demands demands);
	
	// by hsp 7-1 14:31 服务商发货
	public int updateDemandStatusToSendGood(Demands demands);
}
