package oss.biz;

import java.util.List;
import oss.bean.UserStory;
import oss.bean.Violations;
import oss.bean.Links;
/*
 * 门户管理Biz业务接口
 */
public interface PortalManageBiz {

	//雇主故事列表 黄绍鹏6-13  22：20
	public List<UserStory> userStoryList();
	
	//修改雇主故事
	public int updateStory(UserStory userStory);
	// by hlq 2018-06-14
	public List<Violations> violationsList();

	public List<Links> listLinks();
	public abstract int AddLinks(Links links);
	public abstract int deleteById(Long linksid);
	public abstract int updateById(Links links);
	
	// 批量删除雇主故事 黄绍鹏 6-14 15：47
	public abstract int deleteUserStorys(List<UserStory> storyList);
	
	// 增加雇主故事  黄绍鹏 6-14 21：32
	public int addUserStory(UserStory userStory);
}
