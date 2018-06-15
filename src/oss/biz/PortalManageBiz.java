package oss.biz;

import java.util.List;
import oss.bean.UserStory;
import oss.bean.Violations;
import oss.bean.Dynamics;
import oss.bean.Information;
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
	//动态列表   王伟杰6-13
	public List<Dynamics> ListDyna();
	//删除动态   王伟杰6-13
	public abstract int deleteDynaById(Long dynamicId);
	//资讯列表  王伟杰6-13
	public List<Information> ListInfo();
	//删除资讯王伟杰6-13
	public abstract int deleteInfoById(Long InformationId);
}
