package oss.biz;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import oss.bean.UserStory;
import oss.bean.Violations;
/*
 * 门户管理Biz业务实现类
 */
import oss.mapper.PortalManageMapper;
@Service
public class PortalManageBizImpl implements PortalManageBiz{
	@Resource
	private PortalManageMapper portalManageMapper;
	
	//雇主故事列表 黄绍鹏6-13  22：20
	@Override
	public List<UserStory> userStoryList() {
		return portalManageMapper.storyList();
	}


	@Override
	public int updateStory(UserStory userStory) {
		int i = portalManageMapper.updateStory(userStory);
		return i;
	}
	// by hlq 2018-06-14
	@Override
	public List<Violations> violationsList() {
		return portalManageMapper.listViolations();

	}

}
