package oss.bean;

public class Param {
	private Long parameterId;
	private String parameterName;
	public Param() {
		super();
		// TODO 自动生成的构造函数存根
	}
	public Param(Long parameterId, String parameterName) {
		super();
		this.parameterId = parameterId;
		this.parameterName = parameterName;
	}
	public Long getParameterId() {
		return parameterId;
	}
	public void setParameterId(Long parameterId) {
		this.parameterId = parameterId;
	}
	public String getParameterName() {
		return parameterName;
	}
	public void setParameterName(String parameterName) {
		this.parameterName = parameterName;
	}
	
}
