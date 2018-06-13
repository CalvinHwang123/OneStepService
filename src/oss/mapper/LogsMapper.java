package oss.mapper;

import java.util.List;

import oss.annotation.MyRepository;
import oss.bean.Logs;

@MyRepository
public interface LogsMapper {
	public List<Logs> listLogs();
}
