package oss.mapper;

import java.util.List;

import oss.annotation.MyRepository;
import oss.bean.Classification;
import oss.bean.Condition;
import oss.bean.Emps;
import oss.bean.Menu;
import oss.bean.Powers;
import oss.bean.Role;

/*
 * 系统管理Mapper接口
 */
@MyRepository
public interface SystemManegeMapper {
	// jhx 获取权限列表 2018-6-14
	public List<Powers> listPower();

	// jhx 获取所有角色列表 6.21
	public List<Role> listRole();

	// jhx 获取所有一二级动态菜单 6.21
	public List<Menu> allOneMenu();

	public List<Menu> allTwoMenu();

	// jhx 根据员工ID获取一二级动态菜单 6.19
	public List<Menu> oneMenuList(Long empID);

	public List<Menu> twoMenuList(Long empID);

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

	// 分类列表数据修改 袁楠文 2018-6-16 22:36
	public int reviseClasslistData(Classification classification);

	// 服务商列表数据请求 袁楠文 2018-6-16 23:52
	public List<Classification> seroneclassMenu(Condition condition);

	// 二级分类菜单数据 袁楠文 2018-6-21 10:12
	public List<Classification> twoclassMenu();
}
