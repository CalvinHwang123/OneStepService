package oss.biz;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import oss.bean.Users;
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

}
