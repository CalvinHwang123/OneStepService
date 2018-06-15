package oss.mapper;


import java.util.List;
import oss.annotation.MyRepository;
import oss.bean.UserStory;
import oss.bean.Violations;
import oss.bean.Dynamics;
import oss.bean.Information;
import oss.bean.Links;
/*
 * 后端门户管理Mapper接口
 */
@MyRepository
public interface PortalManageMapper {
	//雇主故事列表 黄绍鹏6-13  22：20
	public List<UserStory> storyList();
	
	//修改雇主故事 黄绍鹏6-13  23：10
	public int updateStory(UserStory userStory);
	// by hlq 2018-06-14
	public List<Violations> listViolations();
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
