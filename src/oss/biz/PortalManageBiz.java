package oss.biz;

import java.util.List;

import oss.bean.Links;

/*
 * 门户管理Biz业务接口
 */
public interface PortalManageBiz {
	public List<Links> listLinks();
	public abstract int AddLinks(Links links);
	public abstract int deleteById(Long linksid);
	public abstract int updateById(Links links);
}
