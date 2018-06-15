package oss.mapper;

import java.util.List;

import oss.annotation.MyRepository;
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
}
