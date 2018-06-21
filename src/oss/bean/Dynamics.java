package oss.bean;

public class Dynamics {
	private Long dynamicId;// 动态ID
	private String dynamicTitle;// 动态标题
	private String dynamicContext;// 动态内容
	private String dynamicTime;// 动态时间
	private Classification  checkClass;//分类ID
	public Dynamics() {
		
	}



	public Dynamics(Long dynamicId, String dynamicTitle, String dynamicContext, String dynamicTime,
			Classification checkClass) {
		super();
		this.dynamicId = dynamicId;
		this.dynamicTitle = dynamicTitle;
		this.dynamicContext = dynamicContext;
		this.dynamicTime = dynamicTime;
		this.checkClass = checkClass;
	}



	public Long getDynamicId() {
		return dynamicId;
	}
	public void setDynamicId(Long dynamicId) {
		this.dynamicId = dynamicId;
	}
	public String getDynamicTitle() {
		return dynamicTitle;
	}
	public void setDynamicTitle(String dynamicTitle) {
		this.dynamicTitle = dynamicTitle;
	}
	public String getDynamicContext() {
		return dynamicContext;
	}
	public void setDynamicContext(String dynamicContext) {
		this.dynamicContext = dynamicContext;
	}
	public String getDynamicTime() {
		return dynamicTime;
	}
	public void setDynamicTime(String dynamicTime) {
		this.dynamicTime = dynamicTime;
	}



	public Classification getCheckClass() {
		return checkClass;
	}



	public void setCheckClass(Classification checkClass) {
		this.checkClass = checkClass;
	}

	
}
