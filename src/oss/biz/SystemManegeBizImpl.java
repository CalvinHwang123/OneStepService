package oss.biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import oss.bean.Emps;
import oss.bean.Powers;
import oss.bean.classification;
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

	// 一级分类唯一验证 袁楠文 2018-6-14 10:50
	@Override
	public List<Object> Classuniquequery(String oneclassname) {
		// TODO 自动生成的方法存根
		List<Object> classList = systemManegeMapper.Classuniquequery(oneclassname);
		return classList;
	}

	// 请求分类列表数据 袁楠文 2018-6-14 16:00
	@Override
	public List<classification> seekclasslist() {
		// TODO 自动生成的方法存根
		List<classification> seekclasslist = systemManegeMapper.seekclasslist();
		return seekclasslist;
	}

}
