package oss.biz;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import oss.bean.Violations;
/*
 * 门户管理Biz业务实现类
 */
import oss.mapper.PortalManageMapper;
@Service
public class PortalManageBizImpl implements PortalManageBiz{
	@Resource
	private PortalManageMapper portalManageMapper;

	// by hlq 2018-06-14
	@Override
	public List<Violations> violationsList() {
		return portalManageMapper.listViolations();
	}

}
