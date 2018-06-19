package oss.biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import oss.bean.Users;
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
	public List<Users> Userlist() {
		// TODO Auto-generated method stub
		return busiManageMapper.listUser();
	}

	@Override
	public int DlUserID(long lo) {
		// TODO Auto-generated method stub
		return busiManageMapper.DlUserID(lo);
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
	public List<Users> providerlist() {
		// TODO Auto-generated method stub
		return busiManageMapper.providerlist();
	}

	@Override
	public int providerupdatepow(long lo) {
		// TODO Auto-generated method stub
		return busiManageMapper.providerupdatepow(lo);
	}

	@Override
	public int providerBlacklist(long lo) {
		// TODO Auto-generated method stub
		return busiManageMapper.providerBlacklist(lo);
	}

	@Override
	public int providerDisable(long lo) {
		// TODO Auto-generated method stub
		return busiManageMapper.providerDisable(lo);
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
	public List<Users> searchUser(String userAccount) {
		// TODO Auto-generated method stub
		return busiManageMapper.searchUser(userAccount);
	}

	@Override
	public List<demands> demandList() {
		// TODO Auto-generated method stub
		return busiManageMapper.demandList();
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

	// 前台注册 王伟杰 6-17
	@Override
	public int AddUsers(Users users) {

		return busiManageMapper.AddUsers(users);
	}
	// 唯一性验证  王伟杰 6-17
	@Override
	public List<Users> SelectName(Users users) {
	
		return busiManageMapper.SelectName(users);
	}
}
