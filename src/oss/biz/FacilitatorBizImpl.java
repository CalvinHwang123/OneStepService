package oss.biz;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import oss.mapper.FacilitatorMapper;
/*
 * 服务商Biz业务实现类
 */
@Service
public class FacilitatorBizImpl {
	@Resource
	private FacilitatorMapper facilitatorMapper;

}
