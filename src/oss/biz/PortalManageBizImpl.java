package oss.biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import oss.bean.UserStory;
import oss.bean.Violations;
import oss.bean.Links;
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
	
	@Override
	public List<Links> listLinks() {
		System.out.println("listLinks");
		return portalManageMapper.listLinks();
	}

	@Override
	public int AddLinks(Links links) {
		System.out.println("AddLinks");
		return portalManageMapper.AddLinks(links);
	}

	@Override
	public int deleteById(Long linksid) {
		System.out.println("deleteById");
		return portalManageMapper.deleteById(linksid);
	}

	@Override
	public int updateById(Links links) {
		System.out.println("updateById");
		return portalManageMapper.updateById(links);
	}

	// 违规记录删除 By Hlq 2018-06-14 22:01
	@Override
	public boolean violationsDelete(long violationsID) {
		return portalManageMapper.deleteViolationsByID(violationsID) > 0;
	}
}
