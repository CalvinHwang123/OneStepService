package oss.biz;

import java.util.List;

import oss.bean.Classification;
import oss.bean.Condition;
import oss.bean.Emps;
import oss.bean.Powers;

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
	public List<Classification> seekclasslist(Condition condition);
	
	// 分类列表数据删除 袁楠文 2018-6-15 11:11
	public int delclasslistdata(long classificationId);
	
	// 一级分类菜单数据 袁楠文 2018-6-15 15:17
	public List<Classification> oneclassMenu();
	
	// 分类数据添加 袁楠文 2018-6-16 12:33
	public int addclasslistdata(Classification classification);

	// 分类列表数据修改  袁楠文 2018-6-16 22:36
	public int reviseClasslistData(Classification classification);
	
	// 服务商列表数据请求 袁楠文 2018-6-16 23:52
	public List<Classification> seroneclassMenu(Condition condition);
}
