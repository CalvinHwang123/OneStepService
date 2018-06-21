package oss.biz;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import oss.bean.Condition;
import oss.bean.Credit;
import oss.bean.Users;
import oss.bean.Violations;
import oss.bean.demands;
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
	public List<Users> providerList(Condition  condition) {
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
	public List<demands> demandList(Condition condition) {
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

	@Override
	public int userCreditScore(Credit credit) {
		// TODO Auto-generated method stub
		return busiManageMapper.userCreditScore( credit);
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

	
	

	


	

}
