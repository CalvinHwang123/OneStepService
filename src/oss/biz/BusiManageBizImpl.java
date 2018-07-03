package oss.biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import oss.bean.Condition;
import oss.bean.Credit;
import oss.bean.Users;
import oss.bean.Violations;
import oss.bean.Works;
import oss.bean.userService;
import oss.bean.Demands;
import oss.bean.Orders;
import oss.bean.Tender;
import oss.bean.Trading;
import oss.mapper.BusiManageMapper;

/*
 * 业务管理Biz业务实现类
 */
@Service
public class BusiManageBizImpl implements BusiManageBiz {
	@Resource
	private BusiManageMapper busiManageMapper;

	@Override
	public List<Users> listUser(Condition condition) {
		// TODO Auto-generated method stub
		return busiManageMapper.listUser(condition);
	}

	@Override
	public int updatePow(long lo) {
		// TODO Auto-generated method stub
		return busiManageMapper.updatePow(lo);
	}

	@Override
	public int Blacklist(long lo) {
		// TODO Auto-generated method stub
		return busiManageMapper.Blacklist(lo);
	}

	@Override
	public int Disable(long lo) {
		// TODO Auto-generated method stub
		return busiManageMapper.Disable(lo);
	}

	@Override
	public List<Users> providerList(Condition condition) {
		// TODO Auto-generated method stub
		return busiManageMapper.providerList(condition);
	}

	@Override
	public int enable(long lo) {
		// TODO Auto-generated method stub
		return busiManageMapper.enable(lo);
	}

	@Override
	public int cancelBlacklist(long lo) {
		// TODO Auto-generated method stub
		return busiManageMapper.cancelBlacklist(lo);
	}

	@Override
	public List<Demands> demandList(Condition condition) {
		// TODO Auto-generated method stub
		return busiManageMapper.demandList(condition);
	}

	@Override
	public int examine(long examine) {
		// TODO Auto-generated method stub
		return busiManageMapper.examine(examine);
	}

	@Override
	public int Audited(long audited) {
		// TODO Auto-generated method stub
		return busiManageMapper.Audited(audited);
	}

	// 前台登入 wwj 6-17
	@Override
	public Users ForeLogin(Users users) {
		return busiManageMapper.ForeLogin(users);
	}

	@Override
	public int userCreditScore(Credit credit) {
		// TODO Auto-generated method stub
		return busiManageMapper.userCreditScore(credit);
	}

	@Override
	public int violaTionCreditScore(Violations violations) {
		// TODO Auto-generated method stub
		return busiManageMapper.violaTionCreditScore(violations);
	}

	@Override
	public int creditCreditScore(Credit credit) {
		// TODO Auto-generated method stub
		return busiManageMapper.creditCreditScore(credit);
	}

	// 前台注册 王伟杰 6-17
	@Override
	public int AddUsers(Users users) {

		return busiManageMapper.AddUsers(users);
	}

	// 唯一性验证 王伟杰 6-17
	@Override
	public List<Users> SelectName(Users users) {

		return busiManageMapper.SelectName(users);
	}

	@Override
	public List<Works> listWorks(Condition condition) {

		return busiManageMapper.listWorks(condition);
	}

	@Override
	public int updateWorksById(Works works) {

		return busiManageMapper.updateWorksById(works);
	}

	// by hsp 雇主发布需求 6-26 10:20
	@Override
	public int releaseDemand(Demands demands) {
		return busiManageMapper.insertDemand(demands);
	}

	// wwj 个人信息修改
	@Override
	public Users updateUsersByAcc(Users users) {
		busiManageMapper.updateUsersByAcc(users);
		return busiManageMapper.SelectUsersByAcc(users);
	}

	// wwj 个人信息查詢
	@Override
	public Users SelectUsersByAcc(Users users) {
		return busiManageMapper.SelectUsersByAcc(users);
	}

	// 交易明细
	@Override
	public List<Trading> tradingList(Condition condition) {

		return busiManageMapper.tradingList(condition);
	}

	// 信用明细
	@Override
	public List<Credit> creditList(Condition condition) {

		return busiManageMapper.creditList(condition);
	}

	// 收藏
	@Override
	public List<Users> userServiceList(Condition condition) {

		return busiManageMapper.userServiceList(condition);
	}

	// by hsp 6-28 11:05 检查服务商是否投过该需求的标
	@Override
	public Tender checkIsBidded(Tender tender) {
		return busiManageMapper.selectTenderByID(tender);
	}

	// by hsp 6-28 11:25 查找具体的需求
	@Override
	public Demands selectDemand(Tender tender) {
		return busiManageMapper.selectDemandByID(tender);
	}

	// by hsp 6-28 11:36投标成功后，需求的剩余投标数量-1
	@Override
	public int deductTenderNumber(Demands demands) {
		return busiManageMapper.updateDemandTenderNumber(demands);
	}

	// by hsp 6-28 11:58投标成功，往投标需求关系表Tender中插入数据
	@Override
	public int bidding(Tender tender) {
		return busiManageMapper.insertTender(tender);
	}

	// 合作 wwj
	@Override

	public List<Users> cooperationList(Condition condition) {
		return busiManageMapper.cooperationList(condition);
	}

	// 发布作品 hlq 2018-06-27 20:23
	@Override
	public boolean publishWorks(Works works) {
		return busiManageMapper.insertWorks(works) > 0;
	}

	// 修改作品成交量 hlq 2018-06-27 20:23
	@Override
	public boolean updateWorksNumById(Works works) {
		return busiManageMapper.updateWorksNumById(works) > 0;
	}

	// by hsp 6-28 20：50 服务商查看自己已投过的标 列表
	@Override
	public List<Demands> serversBidsList(Users users) {
		return busiManageMapper.selectBidsByServerID(users);
	}
	
	// 增加订单 hlq 2018-06-29 11:19
	@Override
	public boolean addOrders(Orders orders) {
		return busiManageMapper.addOrders(orders) > 0;
	}

	// 修改用户余额  hlq 2018-06-29 14:07
	@Override
	public boolean updateUserBalanceById(Users users) {
		return busiManageMapper.updateUserBalanceById(users) > 0;
	}

	// 根据作品id获取作品信息 hlq 2018-06-29 14:15
	@Override
	public Works selectWorksById(Long worksId) {
		return busiManageMapper.selectWorksById(worksId);
	}

	// 添加交易记录 hlq 2018-06-29 14:58
	@Override
	public boolean AddTrading(Trading trading) {
		return busiManageMapper.AddTrading(trading) > 0;
	}

	// 根据用户id查询订单作品信息
	@Override
	public List<Orders> selectOrderWorksByUserId(Condition condition) {
		return busiManageMapper.selectOrderWorksByUserId(condition);
	}

	// by hsp 6-29 15:34 雇主查找自己所发布的所有需求
	@Override
	public List<Demands> usersDemandsList(Users users) {
		return busiManageMapper.demandsByUserID(users);
	}

	// by hsp 6-30 15:41雇主根据需求ID查找投过标的服务商
	@Override
	public List<Users> biddedServerList(Demands demands) {
		return busiManageMapper.selectServerByDemandID(demands);
	}

	// by hsp 6-30 20:35 雇主選擇中標者，更改需求状态以及填入中标者ID
	@Override
	public int chooseTender(Demands demands) {
		return busiManageMapper.updateDemandStatusToTender(demands);
	}

	// by hsp 7-1 12:45 雇主确认收货
	@Override
	public String confirmReceipt(Demands demands,Users users) {
		//1 判断雇主余额是否充足
		demands.setUserID(users.getUserID());
		users = busiManageMapper.isSufficientFunds(demands);
		if (users == null) {
			return "NotEnough";
		}
		//2 如果充足，雇主扣款，
		users.setUserBalance(users.getUserBalance() - demands.getDemandPrice());
		busiManageMapper.deductUsersBalance(users);
		
		//3 服务商加款
		demands.setDemandPrice(demands.getDemandPrice()+busiManageMapper.serverBalance(demands));
		busiManageMapper.addServerBalance(demands);
		
		//4 更改需求状态为已付款
		busiManageMapper.updateDemandStatusToConfirmReceipt(demands);
		return "ConfirmSuccess";
	}

	// by hsp 7-1 14:31 服务商发
	@Override
	public String sendGood(Demands demands) {
		String sendResult = "error";
		if (busiManageMapper.updateDemandStatusToSendGood(demands) != 0) {
			sendResult ="success";
		}
		return sendResult;
	}
	// 修改密码 wwj 16:19
	@Override
	public int updateUsersPwdById(Users users) {

		return busiManageMapper.updateUsersPwdById(users);
	}

	// 服务商详情
	@Override
	public Users serviceDetails(Users users) {
		return busiManageMapper.serviceDetails(users);
	}
	//服务商详情   wwj  7-1
	@Override
	public List<Works> serviceWorks(Users users) {
		
		return busiManageMapper.serviceWorks(users);
	}

	// 服务商交易购买的作品 7-2  ynw 13:34
	@Override
	public List<Orders> facilitatororderWorksList(Condition condition) {
		// TODO 自动生成的方法存根
		return busiManageMapper.facilitatororderWorksList(condition);
	}

	// 发送/接收购买的作品 7-3 9:35
	@Override
	public int sendreceiveorderWorkst(Orders orders) {
		// TODO 自动生成的方法存根
		int sendreceiveorderWorkst = busiManageMapper.sendreceiveorderWorkst(orders);
		return sendreceiveorderWorkst;
	}

	// 查询用户余额 7-3 13:48
	@Override
	public List<Users> querybalance(Orders orders) {
		// TODO 自动生成的方法存根
		List<Users> querybalance = busiManageMapper.querybalance(orders);
		return querybalance;
	}
	//支付作品价格 
	@Override
	public int Modifiedamount(Orders orders) {
		// TODO 自动生成的方法存根
		int Modifiedamount = busiManageMapper.Modifiedamount(orders);
		return Modifiedamount;
	}
}
