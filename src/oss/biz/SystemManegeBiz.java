package oss.biz;

import java.util.List;

import oss.bean.Powers;

/*
 * 系统管理Biz业务接口
 */
public interface SystemManegeBiz {
	// jhx 获取权限列表 2018-6-13 9:00
	public List<Powers> powerList();
}
