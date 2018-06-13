package oss.biz;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import oss.mapper.PortalMapper;

/*
 * 前端门户Biz业务实现类
 */
@Service
public class PortalBizImpl {
	@Resource
	private PortalMapper portalMapper;

}
