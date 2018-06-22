package oss.biz;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import oss.bean.Condition;
import oss.bean.UserStory;
import oss.bean.Violations;
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


}
