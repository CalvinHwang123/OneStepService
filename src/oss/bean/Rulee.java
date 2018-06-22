package oss.bean;

public class Rulee {
	private Long   ruleID;//规则id
	private String  ruleTitle;//规则标题
	private String  ruleContext;//规则内容
	private String  ruleTime;//发布时间
	private String  stickTime;//置顶
	public Rulee() {
		super();
	}
	public Rulee(Long ruleID, String ruleTitle, String ruleContext, String ruleTime, String stickTime) {
		super();
		this.ruleID = ruleID;
		this.ruleTitle = ruleTitle;
		this.ruleContext = ruleContext;
		this.ruleTime = ruleTime;
		this.stickTime = stickTime;
	}
	public Long getRuleID() {
		return ruleID;
	}
	public void setRuleID(Long ruleID) {
		this.ruleID = ruleID;
	}
	public String getRuleTitle() {
		return ruleTitle;
	}
	public void setRuleTitle(String ruleTitle) {
		this.ruleTitle = ruleTitle;
	}
	public String getRuleContext() {
		return ruleContext;
	}
	public void setRuleContext(String ruleContext) {
		this.ruleContext = ruleContext;
	}
	public String getRuleTime() {
		return ruleTime;
	}
	public void setRuleTime(String ruleTime) {
		this.ruleTime = ruleTime;
	}
	public String getStickTime() {
		return stickTime;
	}
	public void setStickTime(String stickTime) {
		this.stickTime = stickTime;
	}
	
	
	
	
}
