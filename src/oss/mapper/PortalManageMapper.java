package oss.mapper;


import java.util.List;

import oss.annotation.MyRepository;
import oss.bean.Links;
/*
 * 后端门户管理Mapper接口
 */
@MyRepository
public interface PortalManageMapper {
	public List<Links> listLinks();
	public abstract int AddLinks(Links links);
	public abstract int deleteById(Long linksid);
	public abstract int updateById(Links links);
}
