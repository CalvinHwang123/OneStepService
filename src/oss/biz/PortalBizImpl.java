package oss.biz;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import oss.bean.Condition;
import oss.bean.UserStory;
import oss.bean.Credit;
import oss.bean.Users;
import oss.bean.Violations;
import oss.bean.Workinformation;
import oss.mapper.PortalMapper;
import oss.bean.Violations2;
import oss.mapper.PortalManageMapper;

/*
 * 前端门户Biz业务实现类
 */
@Service
public class PortalBizImpl  implements PortalBiz{
	@Resource
	private PortalManageMapper portalManageMapper;
	@Resource
	private PortalMapper portalMapper;

	// 按违规时间倒序查询违规记录 by hlq 2018-06-16 22:05
	@Override
	public List<Violations> listViolationsDesc(int userType) {
		return portalManageMapper.listViolationsDesc(userType);
	}
	
	// 前端 作品 数据 袁楠文 2018-6-19 22:45
	@Override
	public List<Workinformation> workInfoList(Condition condition) {
		// TODO 自动生成的方法存根
		List<Workinformation> workinfolist=portalMapper.workInfoList(condition);
		return workinfolist;
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

	//前端 作品 详情数据 袁楠文 2018-6-23 21:45
	@Override
	public List<Workinformation> worksIntroduction(Long worksId) {
		// TODO 自动生成的方法存根
		List<Workinformation> workinfolist=portalMapper.worksIntroduction(worksId);
		return workinfolist;
	}
	
	// 根据用户名查询信用明细 hlq 2018-06-21 14:13
	@Override
	public List<Credit> listCreditByName(Condition condition) {
		return portalManageMapper.listCreditByName(condition);
	}

	// 根据搜索关键词列出搜索建议 by hlq 2018-06-22 9:41
	@Override
	public List<String> listSuggestUserByKey(Users users) {
		return portalManageMapper.listSuggestUserByKey(users);
	}
}
