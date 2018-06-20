package oss.biz;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import oss.bean.Condition;
import oss.bean.Violations;
import oss.bean.Workinformation;
import oss.mapper.PortalMapper;

/*
 * 前端门户Biz业务实现类
 */
@Service
public class PortalBizImpl  implements PortalBiz{
	@Resource
	private PortalMapper portalMapper;


	@Override
	public List<Violations> violationsList(Condition condition) {
		return null;
	}
	
	// 前端 作品 数据 袁楠文 2018-6-19 22:45
	@Override
	public List<Workinformation> workInfoList(Condition condition) {
		// TODO 自动生成的方法存根
		List<Workinformation> workinfolist=portalMapper.workInfoList(condition);
		return workinfolist;
	}

}
