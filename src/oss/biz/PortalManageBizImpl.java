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
import oss.bean.Users;
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
	public List<Links> listLinks(Condition condition) {
		System.out.println("listLinks");
		return portalManageMapper.listLinks(condition);
	}

	@Override
	public int AddLinks(Links links) {
		System.out.println("AddLinks");
		return portalManageMapper.AddLinks(links);
	}

	@Override
	public int deleteById(List<Links> linksList) {
		System.out.println("deleteById");
		return portalManageMapper.deleteById(linksList);
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

	// 增加雇主故事 黄绍鹏 6-14 21：32
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
	public List<Dynamics> ListDyna(Condition condition) {

		return portalManageMapper.ListDyna(condition);
	}

	// 资讯列表 王伟杰 6-13
	@Override
	public List<Information> ListInfo(Condition condition) {

		return portalManageMapper.ListInfo(condition);
	}

	// 删除动态 王伟杰 6-13
	@Override
	public int deleteDynaById(List<Dynamics> dynaList) {

		return portalManageMapper.deleteDynaById(dynaList);
	}

	// 删除资讯 王伟杰 6-13
	@Override
	public int deleteInfoById(List<Information> infoList) {

		return portalManageMapper.deleteInfoById(infoList);
	}

	// 修改动态 WWJ 6-15
	@Override
	public int updateDynaById(Dynamics dynamics) {

		return portalManageMapper.updateDynaById(dynamics);
	}

	// 修改资讯 wwj 6-15
	@Override
	public int updateInfoById(Information information) {
		// TODO Auto-generated method stub
		return portalManageMapper.updateInfoById(information);
	}
//增加动态   wwj 6-15
	@Override
	public int AddDyna(Dynamics dynamics) {
		
		return portalManageMapper.AddDyna(dynamics);
	}
//增加资讯   wwj 6-15
	@Override
	public int AddInfo(Information information) {
	
		return portalManageMapper.AddInfo(information);
	}

}
