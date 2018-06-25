package oss.biz;

import java.util.List;
import java.util.Map;

/*
 * 服务商Biz业务接口
 */
public interface FacilitatorBiz {

	// 发布作品前获取一级二级分类列表 2018-06-25 15:22
	public Map<String, List<Map<Long, String>>> listClassMap();
}
