package oss.biz;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import oss.bean.Classification;
import oss.mapper.FacilitatorMapper;
import oss.mapper.SystemManegeMapper;
/*
 * 服务商Biz业务实现类
 */
@Service
public class FacilitatorBizImpl implements FacilitatorBiz{
	@Resource
	private FacilitatorMapper facilitatorMapper;
	
	@Resource
	private SystemManegeMapper systemManegeMapper;

	// 发布作品前获取一级二级分类列表 2018-06-25 15:22
	@Override
	public Map<String, List<Map<Long, String>>> listClassMap() {
		// 列出所有一级分类
		List<Classification> firstClassList = systemManegeMapper.seroneclassMenu(null);
		// 列出所有二级分类
		List<Classification> secondClassList = systemManegeMapper.seekclasslist(null);
		Map<String,  List<Map<Long, String>>> firstClassMap = new HashMap<>();
		// 遍历添加一级下对应的二级分类
		for (int i = 0; i < firstClassList.size(); ++i) {
			// 获取一级分类名称和id
			String firstClassName = firstClassList.get(i).getClassificationName();
			Long firstClassId = firstClassList.get(i).getClassificationId();
			List<Map<Long, String>> firstClassMapList = new ArrayList<>();
			for (int j = 0; j < secondClassList.size(); ++j) {
				Map<Long, String> secondClassMap = new HashMap<>();
				// 获取一级分类名称,pid和id
				String secondClassName = secondClassList.get(j).getClassificationName();
				Long secondClassPId = secondClassList.get(j).getClassificationPid();
				Long secondClassId = secondClassList.get(j).getClassificationId();
				// 如果该二级分类的pid等于一级分类的id
				if (secondClassPId.equals(firstClassId)) {
					// 添加该二级分类id和名称到secondClassMap
					secondClassMap.put(secondClassId, secondClassName);
					firstClassMapList.add(secondClassMap);
				}
			}
			// 添加secondClassMap到firstMap
			firstClassMap.put(firstClassName, firstClassMapList);
		}
		return firstClassMap;
	}

}
