package oss.biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import oss.bean.Classification;
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

	// 一级分类唯一验证 袁楠文 2018-6-14 10:50
	@Override
	public List<Object> Classuniquequery(String oneclassname) {
		// TODO 自动生成的方法存根
		List<Object> classList = systemManegeMapper.Classuniquequery(oneclassname);
		return classList;
	}

	// 请求分类列表数据 袁楠文 2018-6-14 16:00
	@Override
	public List<Classification> seekclasslist() {
		// TODO 自动生成的方法存根
		List<Classification> seekclasslist = systemManegeMapper.seekclasslist();
		return seekclasslist;
	}
	
	// 分类列表数据删除 袁楠文 2018-6-15 11:11
	@Override
	public int delclasslistdata(long classificationId) {
		// TODO 自动生成的方法存根
		int delclassnumber=systemManegeMapper.delclasslistdata(classificationId);
		return delclassnumber;
	}
	
	// 一级分类菜单数据 袁楠文 2018-6-15 15:17
	@Override
	public List<Classification> oneclassMenu() {
		// TODO 自动生成的方法存根
		List<Classification> oneclassMenuList = systemManegeMapper.oneclassMenu();
		return oneclassMenuList;
	}
	
	// 分类数据添加 袁楠文 2018-6-16 12:33
	@Override
	public int addclasslistdata(Classification classification) {
		// TODO 自动生成的方法存根
		int addclasslistdata = systemManegeMapper.addclasslistdata(classification);
		return addclasslistdata;
	}

	// 分类列表数据修改  袁楠文 2018-6-16 22:36
	@Override
	public int reviseClasslistData(Classification classification) {
		// TODO 自动生成的方法存根
		int reviseClasslistData = systemManegeMapper.reviseClasslistData(classification);
		return reviseClasslistData;
	}
}
