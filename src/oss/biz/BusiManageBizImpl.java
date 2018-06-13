package oss.biz;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import oss.mapper.BusiManageMapper;
/*
 * 业务管理Biz业务实现类
 */
@Service
public class BusiManageBizImpl implements BusiManageBiz {
	@Resource
	private BusiManageMapper busiManageMapper;

}
