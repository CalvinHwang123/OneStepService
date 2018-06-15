package oss.biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import oss.bean.Emps;
import oss.bean.Powers;
import oss.mapper.SystemManegeMapper;

/*
 * 系统管理Biz业务实现类
 */
@Service
public class SystemManegeBizImpl implements SystemManegeBiz {
	@Resource
	private SystemManegeMapper systemManegeMapper;

	// jhx 获取权限列表 2018-6-14
	@Override
	public List<Powers> powerList() {
		// TODO Auto-generated method stub
		return systemManegeMapper.listPower();
	}

	// jhx 查找用户 2018-6-14
	@Override
	public Emps findEmp(String empAccount) {
		// TODO Auto-generated method stub
		return systemManegeMapper.findEmp(empAccount);
	}

}
