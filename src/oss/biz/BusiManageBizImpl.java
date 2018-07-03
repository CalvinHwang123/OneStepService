package oss.biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import oss.bean.Condition;
import oss.bean.Credit;
import oss.bean.Demands;
import oss.bean.Tender;
import oss.bean.Trading;
import oss.bean.Users;
import oss.bean.Violations;
import oss.bean.Works;
import oss.bean.userService;
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
	public List<userService> userServiceList(Condition condition) {

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
	public List<userService> cooperationList(Condition condition) {

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

	// jhx 6.29 通过条件查找账务

	@Override
	public List<Trading> findTraByCondition(Condition cd) {
		// TODO Auto-generated method stub
		return busiManageMapper.findTraByCondition(cd);
	}

	// jhx 6.29 查找所有用户
	@Override
	public List<Users> findAllUser() {
		return busiManageMapper.findAllUser();
	}

}
