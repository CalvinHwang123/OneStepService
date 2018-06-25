package oss.biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import oss.bean.Condition;
import oss.bean.Dynamics;
import oss.bean.Information;
import oss.bean.Links;

import oss.bean.SuccessCase;

import oss.bean.Rulee;

import oss.bean.UserStory;
import oss.bean.Violations;
import oss.bean.Violations2;
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

	// 雇主故事byID by hsp 6-20 13:24
	@Override
	public UserStory userStory(UserStory userStory) {
		return portalManageMapper.selectStoryByID(userStory);
	}

	@Override
	public int updateStory(UserStory userStory) {
		int i = portalManageMapper.updateStory(userStory);
		return i;
	}

	// by hlq 2018-06-14
	@Override
	public List<Violations> violationsList(Condition condition) {
		return portalManageMapper.listViolations(condition);
	}

	@Override
	public List<Links> listLinks(Condition condition) {
		System.out.println("listLinks");
		return portalManageMapper.listLinks(condition);
	}

	@Override
	public int addLinks(Links links) {
		System.out.println("AddLinks");
		return portalManageMapper.addLinks(links);
	}

	@Override
	public int deleteLinksById(List<Links> linksList) {
		System.out.println("deleteById");
		return portalManageMapper.deleteLinksById(linksList);
	}

	@Override
	public int updateLinksById(Links links) {
		System.out.println("updateById");
		return portalManageMapper.updateLinksById(links);
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
	public boolean violationsDelete(List<Violations> violationsList) {
		return portalManageMapper.deleteViolationsByID(violationsList) > 0;
	}

	// 违规记录新增 By Hlq 2018-06-15 13:51
	@Override
	public boolean insertViolations(Violations violations) {
		return portalManageMapper.insertViolations(violations) > 0;
	}

	// 违规记录修改 By Hlq 2018-06-15 13:51
	@Override
	public boolean updateViolationsByID(Violations violations) {
		return portalManageMapper.updateViolationsByID(violations) > 0;
	}

	// 违规记录置顶与取消置顶 By Hlq 2018-06-16 21:05
	@Override
	public boolean stickUpdateViolationsByID(Violations violations) {
		return portalManageMapper.stickUpdateViolationsByID(violations) > 0;
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

	// 增加动态 wwj 6-15
	@Override
	public int AddDyna(Dynamics dynamics) {

		return portalManageMapper.AddDyna(dynamics);
	}

	// 增加资讯 wwj 6-15
	@Override
	public int AddInfo(Information information) {
		return portalManageMapper.AddInfo(information);
	}

	// 按违规时间倒序查询违规记录 by hlq 2018-06-16 22:05
	@Override
	public List<Links> LinksList() {
		// TODO Auto-generated method stub
		return portalManageMapper.LinksList();
	}

	// 查询成功案例列表 by hsp 6-20 22:26
	@Override
	public List<SuccessCase> successCaseList(Condition condition) {
		return portalManageMapper.successCaseList(condition);
	}

	// 单个成功案例 by hsp 6-21 11:24
	@Override
	public SuccessCase successCase(SuccessCase successCase) {
		return portalManageMapper.selectCaseByID(successCase);
	}

	// 修改成功案例 by hsp 6-21 11:24
	@Override
	public int updateSuccessCase(SuccessCase successCase) {
		int i = portalManageMapper.updateSuccessCase(successCase);
		return i;
	}

	// 批量删除成功案例 by hsp 6-21 11:24
	@Override
	public int deleteSuccessCases(List<SuccessCase> successCaseList) {
		return portalManageMapper.deleteSuccessCaseByID(successCaseList);
	}

	// 增加成功案例 by hsp 6-21 11:24
	@Override
	public int addSuccessCases(SuccessCase successCase) {
		return portalManageMapper.insertSuccessCase(successCase);
	}

	@Override
	public List<Rulee> ruleCenterList(Condition condition) {
		// TODO Auto-generated method stub
		return portalManageMapper.ruleCenterList(condition);
	}

	@Override
	public int addRulee(Rulee rulee) {
		// TODO Auto-generated method stub
		return portalManageMapper.addRulee(rulee);
	}

	@Override
	public int updateRulee(Rulee rulee) {
		// TODO Auto-generated method stub
		return portalManageMapper.updateRulee(rulee);
	}
	// 华清修改：违规记录删除

	@Override
	public int deleteRulee(List<Rulee> rulee) {
		return portalManageMapper.deleteRulee(rulee);
	}

	@Override
	public List<Rulee> ruleList() {
		// TODO Auto-generated method stub
		return portalManageMapper.ruleList();
	}
	// 华清修改：前端规则中心内容列表
	
	@Override
	public Rulee conTentList(Rulee rulee) {
		// TODO Auto-generated method stub
		return portalManageMapper.conTentList(rulee);
	}

	
}
