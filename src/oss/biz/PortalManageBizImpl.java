package oss.biz;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

/*
 * 门户管理Biz业务实现类
 */
import oss.mapper.PortalManageMapper;
@Service
public class PortalManageBizImpl implements PortalManageBiz{
	@Resource
	private PortalManageMapper portalManageMapper;

}
