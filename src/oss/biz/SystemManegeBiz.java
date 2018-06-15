package oss.biz;

import java.util.List;

import oss.bean.Emps;
import oss.bean.Powers;
import oss.bean.classification;

/*
 * 系统管理Biz业务接口
 */
public interface SystemManegeBiz {
	// jhx 获取权限列表 2018-6-13 9:00
	public List<Powers> powerList();

	// jhx 查找用户 2018-6-14
	public Emps findEmp(String empAccount);

	// 一级分类唯一验证 袁楠文 2018-6-14 10:50
	public List<Object> Classuniquequery(String oneclassname);

	// 请求分类列表数据 袁楠文 2018-6-14 16:00
	public List<classification> seekclasslist();

}
