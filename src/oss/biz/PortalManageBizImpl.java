package oss.biz;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import oss.bean.Condition;
import oss.bean.Dynamics;
import oss.bean.Information;
import oss.bean.Links;
import oss.bean.UserStory;
import oss.bean.Violations;
/*
 * 门户管理Biz业务实现类
 */
import oss.mapper.PortalManageMapper;

@Service
public class PortalManageBizImpl implements PortalManageBiz {
	@Resource
	private PortalManageMapper portalManageMapper;

	// 雇主故事列表 黄绍鹏6-13 22：20
	@Override
	public List<UserStory> userStoryList(Condition condition) {
		return portalManageMapper.storyList(condition);
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

	// 批量删除雇主故事 黄绍鹏 6-14 15：47
	@Override
	public int deleteUserStorys(List<UserStory> storyList) {
		return portalManageMapper.deleteStoryByID(storyList);
	}

	// 增加雇主故事  黄绍鹏 6-14 21：32
	@Override
	public int addUserStory(UserStory userStory) {
		return portalManageMapper.insertStory(userStory);
	}
		
	// 违规记录删除 By Hlq 2018-06-14 22:01
	@Override
	public boolean violationsDelete(long violationsID) {
		return portalManageMapper.deleteViolationsByID(violationsID) > 0;
	}

	// 动态列表 王伟杰6-13
	@Override
	public List<Dynamics> ListDyna() {

		return portalManageMapper.ListDyna();
	}

	// 资讯列表 王伟杰 6-13
	@Override
	public List<Information> ListInfo() {

		return portalManageMapper.ListInfo();
	}
//删除动态  王伟杰 6-13
	@Override
	public int deleteDynaById(Long dynamicId) {
		
		return portalManageMapper.deleteDynaById(dynamicId);
	}
//删除资讯  王伟杰 6-13
	@Override
	public int deleteInfoById(Long InformationId) {
		
		return portalManageMapper.deleteInfoById(InformationId);
	}
}
