package oss.biz;

import java.util.List;

import oss.bean.Classification;
import oss.bean.Condition;
import oss.bean.Emps;
import oss.bean.Menu;
import oss.bean.Role;
import oss.bean.RolePower;

/*
 * 系统管理Biz业务接口
 */
public interface SystemManegeBiz {
	// jhx 获取权限列表 2018-6-25(权限配置)
	public List<Menu> powerList(Long roleID);

	// jhx 获取角色列表 6.21(权限配置)
	public List<Role> roleList();

	// jhx 获取所有一二级动态菜单 6.21(权限配置)
	public List<Menu> findAllOneMenu();

	public List<Menu> findAllTwoMenu();

	// jhx 删除角色的所有权限（权限配置） 6.25
	public Long deleteRolePower(Long roleID);

	// jhx 通过二级菜单找权限（权限配置） 6.25
	public Long findPowerID(Long munuID);

	// jhx 插入新配置权限 6.25
	public Long updateRolePower(RolePower rolePower);

	// jhx 获取一二级动态菜单 6.19(动态菜单)
	public List<Menu> oneMenuList(Long empID);

	public List<Menu> twoMenuList(Long empID);

	// jhx 6.26 登录 查找该员工
	public Emps findEmp(String empAccount);

	// jhx 6.26 查找所有员工
	public List<Emps> findAllEmp();

	// jhx 6.26 按条件查找员工
	public List<Emps> findByCondition(Condition cd);

	// jhx 6.26 添加员工
	public Long addEmp(Emps emp);

	// jhx 6.26 删除员工
	public Long deleteEmp(String empID);

	// jhx 6.26 修改员工资料
	public Long updateEmp(Emps emp);

	// jhx 6.26 修改员工账号状态 禁用
	public Long disable(Long empID);

	// jhx 6.26 修改员工账号状态 启用
	public Long enable(Long empID);

	// jhx 6.27 通过id查找员工信息
	public Emps findEmpById(Long empID);

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
