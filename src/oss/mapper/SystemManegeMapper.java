package oss.mapper;

import java.util.List;

import oss.annotation.MyRepository;
import oss.bean.Classification;
import oss.bean.Emps;
import oss.bean.Powers;

/*
 * 系统管理Mapper接口
 */
@MyRepository
public interface SystemManegeMapper {
	// jhx 获取权限列表 2018-6-14
	public List<Powers> listPower();

	// jhx 查找用户 2018-6-14
	public Emps findEmp(String empAccount);

	// 一级分类唯一验证 袁楠文 2018-6-14 10:50
	public List<Object> Classuniquequery(String oneclassname);

	// 请求分类列表数据 袁楠文 2018-6-14 16:00
	public List<Classification> seekclasslist();
	
	// 分类列表数据删除 袁楠文 2018-6-15 11:11
	public int delclasslistdata(long classificationId);
	
	// 一级分类菜单数据 袁楠文 2018-6-15 15:17
	public List<Classification> oneclassMenu();
	
	// 分类数据添加 袁楠文 2018-6-16 12:33
	public int addclasslistdata(Classification classification);
}
