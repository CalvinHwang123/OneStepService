package oss.biz;

import java.util.List;

import oss.bean.UserStory;
import oss.bean.Users;
import oss.bean.Violations;
import oss.bean.Violations2;
import oss.bean.Condition;
import oss.bean.Dynamics;
import oss.bean.Information;
import oss.bean.Links;

/*
 * 门户管理Biz业务接口
 */
public interface PortalManageBiz {

	//雇主故事列表 黄绍鹏6-13  22：20
	public List<UserStory> userStoryList(Condition condition);
	
	//修改雇主故事

	// 修改雇主故事
	public int updateStory(UserStory userStory);

	// by hlq 2018-06-14
	public List<Violations> violationsList(Condition condition);

	// 违规记录删除 by hlq 2018-06-14 21:59
	public boolean violationsDelete(List<Violations> violationsList);
	// 新增违规记录 by hlq 2018-06-15 11:25
	public boolean insertViolations(Violations violations);
	// 根据id修改违规记录 by hlq 2018-06-15 13:49
	public boolean updateViolationsByID(Violations violations);
	// 根据id置顶与取消置顶违规记录 by hlq 2018-06-16 21:04
	public boolean stickUpdateViolationsByID(Violations violations);
	
	// 按违规时间倒序查询违规记录 by hlq 2018-06-16 22:05
	public List<Violations> listViolationsDesc();

	// 查询置顶违规记录 by hlq 2018-06-16 22:05
	public List<Violations> listStickViolations();

	// 按违规原因分组查询违规列表 by hlq 2018-06-16 22:05
	public List<Violations2> listViolationsGroupByWhy();

	public List<Links> listLinks(Condition condition);

	public abstract int AddLinks(Links links);

	public abstract int deleteById(Long linksid);

	public abstract int updateById(Links links);

	// 批量删除雇主故事 黄绍鹏 6-14 15：47
	public abstract int deleteUserStorys(List<UserStory> storyList);

	// 增加雇主故事 黄绍鹏 6-14 21：32
	public int addUserStory(UserStory userStory);

	// 动态列表 王伟杰6-13
	public List<Dynamics> ListDyna(Condition condition);

	// 删除动态 王伟杰6-13
	public abstract int deleteDynaById(Long dynamicId);

	// 修改动态 wwj 6-15
	public abstract int updateDynaById(Dynamics dynamics);

	// 增加动态 wwj 6-15
	public abstract int AddDyna(Dynamics dynamics);

	// 资讯列表 王伟杰6-13
	public List<Information> ListInfo(Condition condition);

	// 删除资讯王伟杰6-13
	public abstract int deleteInfoById(Long InformationId);

	// 修改资讯 wwj 6-15
	public abstract int updateInfoById(Information information);

	// 增加资讯 wwj 6-15
	public abstract int AddInfo(Information information);
	
	//前台登入  wwj  6-17
		public abstract Users Forelogin(Users users);

}
