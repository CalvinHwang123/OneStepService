package oss.biz;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import oss.bean.Violations;
import oss.bean.Violations2;
import oss.mapper.PortalManageMapper;

/*
 * 前端门户Biz业务实现类
 */
@Service
public class PortalBizImpl  implements PortalBiz{
	@Resource
	private PortalManageMapper portalManageMapper;

	// 按违规时间倒序查询违规记录 by hlq 2018-06-16 22:05
	@Override
	public List<Violations> listViolationsDesc(int userType) {
		return portalManageMapper.listViolationsDesc(userType);
	}

	// 查询置顶违规记录 by hlq 2018-06-16 22:05
	@Override
	public List<Violations> listStickViolations(int userType) {
		return portalManageMapper.listStickViolations(userType);
	}

	// 按违规原因分组查询违规列表 by hlq 2018-06-16 22:05
	@Override
	public List<Violations2> listViolationsGroupByWhy(int userType) {
		return portalManageMapper.listViolationsGroupByWhy(userType);
	}
}
