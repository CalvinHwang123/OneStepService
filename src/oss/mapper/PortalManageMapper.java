package oss.mapper;


import java.util.List;

import oss.annotation.MyRepository;
import oss.bean.Violations;
/*
 * 后端门户管理Mapper接口
 */
@MyRepository
public interface PortalManageMapper {
	// by hlq 2018-06-14
	public List<Violations> listViolations();
}
