package oss.biz;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import oss.mapper.EmployerMapper;
/*
 * 雇主Biz业务实现类
 */
@Service
public class EmployerBizImpl {
	@Resource
	private EmployerMapper employerMapper;

}
