package oss.biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import oss.bean.Classification;
import oss.bean.Condition;
import oss.bean.EmpRole;
import oss.bean.Emps;
import oss.bean.Menu;
import oss.bean.Role;
import oss.bean.RolePower;
import oss.bean.Trading;
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
	public List<Menu> powerList(Long roleID) {
		// TODO Auto-generated method stub
		return systemManegeMapper.powerList(roleID);
	}

	// jhx 获取角色列表 6.21
	@Override
	public List<Role> roleList() {
		// TODO Auto-generated method stub
		return systemManegeMapper.listRole();
	}

	// jhx 删除角色的所有权限（权限配置） 6.25
	@Override
	public Long deleteRolePower(Long roleID) {
		// TODO Auto-generated method stub
		return systemManegeMapper.deleteRolePower(roleID);
	}

	// jhx 通过二级菜单找权限（权限配置） 6.25
	@Override
	public Long findPowerID(Long munuID) {
		// TODO Auto-generated method stub
		return systemManegeMapper.findPowerID(munuID);
	}

	// jhx 插入新配置权限 6.25
	@Override
	public Long updateRolePower(RolePower rolePower) {
		// TODO Auto-generated method stub
		return systemManegeMapper.updateRolePower(rolePower);
	}

	// jhx 获取所有一级动态菜单 6.21
	@Override
	public List<Menu> findAllOneMenu() {
		// TODO Auto-generated method stub
		return systemManegeMapper.allOneMenu();
	}

	// jhx 获取所有二级动态菜单 6.21
	@Override
	public List<Menu> findAllTwoMenu() {
		// TODO Auto-generated method stub
		return systemManegeMapper.allTwoMenu();
	}

	// jhx 获取一级动态菜单 6.19
	@Override
	public List<Menu> oneMenuList(Long empID) {
		// TODO Auto-generated method stub
		return systemManegeMapper.oneMenuList(empID);
	}

	// jhx 获取二级动态菜单 6.19
	@Override
	public List<Menu> twoMenuList(Long empID) {
		// TODO Auto-generated method stub
		return systemManegeMapper.twoMenuList(empID);
	}

	// jhx 6.26 登录 查找该员工
	@Override
	public Emps findEmp(String empAccount) {
		// TODO Auto-generated method stub
		return systemManegeMapper.findEmp(empAccount);
	}

	// jhx 6.26 查找所有员工
	@Override
	public List<Emps> findAllEmp() {
		// TODO Auto-generated method stub
		return systemManegeMapper.findAllEmp();
	}

	// jhx 6.26 查找所有员工角色表
	@Override
	public List<EmpRole> findAllEmpRole() {
		// TODO Auto-generated method stub
		return systemManegeMapper.findAllEmpRole();
	}

	// jhx 6.26 按条件查找员工
	@Override
	public List<Emps> findByCondition(Condition cd) {
		// TODO Auto-generated method stub
		return systemManegeMapper.findByCondition(cd);
	}

	// jhx 6.26 添加员工
	@Override
	public Long addEmp(Emps emp) {
		// TODO Auto-generated method stub
		return systemManegeMapper.addEmp(emp);
	}

	// jhx 6.26 添加新员工角色
	@Override
	public Long addEmpRole(EmpRole er) {
		// TODO Auto-generated method stub
		return systemManegeMapper.addEmpRole(er);
	}

	// jhx 6.26 删除员工
	@Override
	public Long deleteEmp(Long empID) {
		// TODO Auto-generated method stub
		return systemManegeMapper.deleteEmp(empID);
	}

	// jhx 6.26 修改员工资料
	@Override
	public Long updateEmp(Emps emp) {
		// TODO Auto-generated method stub
		return systemManegeMapper.updateEmp(emp);
	}

	// jhx 6.26 修改员工角色
	@Override
	public Long updateEmpRole(EmpRole er) {
		// TODO Auto-generated method stub
		return systemManegeMapper.updateEmpRole(er);
	}

	// jhx 6.26 修改员工账号状态 禁用
	@Override
	public Long disable(Long empID) {
		// TODO Auto-generated method stub
		return systemManegeMapper.disable(empID);
	}

	// jhx 6.26 修改员工账号状态 启用
	@Override
	public Long enable(Long empID) {
		// TODO Auto-generated method stub
		return systemManegeMapper.enable(empID);
	}

	// jhx 6.27 通过id查找员工信息
	@Override
	public Emps findEmpById(Long empID) {
		// TODO Auto-generated method stub
		return systemManegeMapper.findEmpById(empID);
	}

	// jhx 6.27 按日期查找交易明细
	@Override
	public List<Trading> everydayMoney(Condition ct) {
		// TODO Auto-generated method stub
		return systemManegeMapper.everydayMoney(ct);
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
	public List<Classification> seekclasslist(Condition condition) {
		// TODO 自动生成的方法存根
		List<Classification> seekclasslist = systemManegeMapper.seekclasslist(condition);
		return seekclasslist;
	}

	// 分类列表数据删除 袁楠文 2018-6-15 11:11
	@Override
	public int delclasslistdata(long classificationId) {
		// TODO 自动生成的方法存根
		int delclassnumber = systemManegeMapper.delclasslistdata(classificationId);
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

	// 分类列表数据修改 袁楠文 2018-6-16 22:36
	@Override
	public int reviseClasslistData(Classification classification) {
		// TODO 自动生成的方法存根
		int reviseClasslistData = systemManegeMapper.reviseClasslistData(classification);
		return reviseClasslistData;
	}

	// 服务商列表数据请求 袁楠文 2018-6-16 23:52
	@Override
	public List<Classification> seroneclassMenu(Condition condition) {
		// TODO 自动生成的方法存根
		List<Classification> seroneclassMenuList = systemManegeMapper.seroneclassMenu(condition);
		return seroneclassMenuList;
	}

	// 二级分类菜单数据 袁楠文 2018-6-21 10:12
	@Override
	public List<Classification> twoclassMenu() {
		// TODO 自动生成的方法存根
		List<Classification> twoclassMenuList = systemManegeMapper.twoclassMenu();
		return twoclassMenuList;
	}
}
