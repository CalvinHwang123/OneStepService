package oss.bean;

//日志bean类
public class Logs {
	private Long logID;//日志ID
	private String logTime;//日志时间
	private String logEvent;//日志事件
	private Long loggerID;//操作人ID

	
	public Logs() {
	}

	public Long getLogID() {
		return logID;
	}

	public void setLogID(Long logID) {
		this.logID = logID;
	}

	public String getLogTime() {
		return logTime;
	}

	public void setLogTime(String logTime) {
		this.logTime = logTime;
	}

	public String getLogEvent() {
		return logEvent;
	}

	public void setLogEvent(String logEvent) {
		this.logEvent = logEvent;
	}

	public Long getLoggerID() {
		return loggerID;
	}

	public void setLoggerID(Long loggerID) {
		this.loggerID = loggerID;
	}

}
