package oss.mapper;

import java.util.List;

import oss.annotation.MyRepository;
import oss.bean.Powers;

/*
 * 系统管理Mapper接口
 */
@MyRepository
public interface SystemManegeMapper {
	// jhx 获取权限列表 2018-6-13 9:00
	public List<Powers> listPower();
}
