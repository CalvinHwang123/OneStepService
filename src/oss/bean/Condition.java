package oss.bean;

/*
 * 
 * 所有表格页面的条件类
 * 
 */
public class Condition {
	private String startDate;// 开始日期
	private String endDate;// 截至日期
	private String title;// 标题
	private int classPid;// 上级id
	
	public Condition() {
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getClassPid() {
		return classPid;
	}

	public void setClassPid(int classPid) {
		this.classPid = classPid;
	}

	
}
