package oss.mapper;

import java.util.List;

import oss.annotation.MyRepository;
import oss.bean.Condition;
import oss.bean.Credit;
import oss.bean.Dynamics;
import oss.bean.Information;
import oss.bean.Links;

import oss.bean.SuccessCase;

import oss.bean.Rulee;

import oss.bean.UserStory;
import oss.bean.Users;
import oss.bean.Violations;
import oss.bean.Violations2;
/*
 * 后端门户管理Mapper接口
 */
@MyRepository
public interface PortalManageMapper {
	// 雇主故事列表 黄绍鹏6-13 22：20
	public List<UserStory> storyList(Condition condition);

	// 华清修改：规则中心列表
	public List<Rulee> ruleCenterList(Condition condition);

	// 华清修改：前端规则中心列表
	public List<Rulee> ruleList();

	// 华清修改：前端规则中心内容列表
	public Rulee conTentList(Rulee rulee);

	// 华清修改：规则中心新增规则
	public int addRulee(Rulee rulee);

	// 修改雇主故事 黄绍鹏6-13 23：10
	public int updateStory(UserStory userStory);

	// 修改规则
	public int updateRulee(Rulee rulee);

	// by hlq 2018-06-14
	public List<Violations> listViolations(Condition condition);

	// 根据id删除违规记录 by hlq 2018-06-14 22:02
	public int deleteViolationsByID(List<Violations> list);

	// 新增违规记录 by hlq 2018-06-15 11:25
	public int insertViolations(Violations violations);

	// 根据id修改违规记录 by hlq 2018-06-15 13:49
	public int updateViolationsByID(Violations violations);

	// 根据id置顶与取消置顶违规记录 by hlq 2018-06-16 21：04
	public int stickUpdateViolationsByID(Violations violations);

	// 按违规时间倒序查询违规记录 by hlq 2018-06-16 22:05
	public List<Violations> listViolationsDesc(int userType);

	// 查询置顶违规记录 by hlq 2018-06-16 22:05
	public List<Violations> listStickViolations(int userType);

	// 按违规原因分组查询违规列表 by hlq 2018-06-16 22:05
	public List<Violations2> listViolationsGroupByWhy(int userType);
	// 根据搜索关键词列出搜索建议 by hlq 2018-06-22 9:41
	public List<String> listSuggestUserByKey(Users users);
	
	// 根据用户名查询信用明细 hlq 2018-06-21 14:13
	public List<Credit> listCreditByName(Condition condition);
	
	public List<Links> listLinks(Condition condition);

	public abstract int addLinks(Links links);

	public abstract int deleteLinksById(List<Links> linksList);

	public abstract int updateLinksById(Links links);

	// 批量删除雇主故事 黄绍鹏 6-14 15：47
	public abstract int deleteStoryByID(List<UserStory> storyList);

	// 华清修改：删除规则
	public abstract int deleteRulee(List<Rulee> rulee);

	// 增加雇主故事 黄绍鹏 6-14 21：32
	public int insertStory(UserStory userStory);

	// 单个雇主故事 黄绍鹏6-20 13：18
	public UserStory selectStoryByID(UserStory userStory);

	// 动态列表 王伟杰6-13
	public List<Dynamics> ListDyna(Condition condition);

	// 删除动态 王伟杰6-13
	public abstract int deleteDynaById(List<Dynamics> dynaList);

	// 修改动态 wwj 6-15
	public abstract int updateDynaById(Dynamics dynamics);

	// 增加动态 wwj 6-15
	public abstract int AddDyna(Dynamics dynamics);

	// 资讯列表 王伟杰6-13
	public List<Information> ListInfo(Condition condition);

	// 删除资讯王伟杰6-13
	public abstract int deleteInfoById(List<Information> infoList);

	// 修改资讯 wwj 6-15
	public abstract int updateInfoById(Information information);

	// 增加资讯 wwj 6-15
	public abstract int AddInfo(Information information);

	// 前端资讯 wwj 6-20
	public List<Links> LinksList();

	// 查询成功案例列表 by hsp 6-20 22:26
	public List<SuccessCase> successCaseList(Condition condition);

	// 修改成功案例 by hsp 6-21 11:24
	public int updateSuccessCase(SuccessCase successCase);

	// 批量删除成功案例 by hsp 6-21 11:24
	public abstract int deleteSuccessCaseByID(List<SuccessCase> successCaseList);

	// 增加成功案例 by hsp 6-21 11:24
	public int insertSuccessCase(SuccessCase successCase);

	// 单个成功案例 by hsp 6-21 11:24
	public SuccessCase selectCaseByID(SuccessCase successCase);
}
