package oss.mapper;


import java.util.List;
import oss.annotation.MyRepository;
import oss.bean.UserStory;
import oss.bean.Violations;
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
	// 根据id删除违规记录 by hlq 2018-06-14 22:02
	public int deleteViolationsByID(long violationsID);
	
	public List<Links> listLinks();
	public abstract int AddLinks(Links links);
	public abstract int deleteById(Long linksid);
	public abstract int updateById(Links links);
	
	// 批量删除雇主故事 黄绍鹏 6-14 15：47
	public abstract int deleteStoryByID(List<UserStory> storyList);
	
	// 增加雇主故事  黄绍鹏 6-14 21：32
	public int insertStory(UserStory userStory);
}
