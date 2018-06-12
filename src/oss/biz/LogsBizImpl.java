package oss.biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import oss.bean.Logs;
import oss.mapper.LogsMapper;

@Service
public class LogsBizImpl implements LogsBiz{
	@Resource
	private LogsMapper logsMapper;

	@Override
	public List<Logs> logsList() {
		System.out.println("LogsBizImpl");
		return logsMapper.listLogs();
	}
	
	
	
}
