package oss.bean;
// by hlq 2018-06-14
//违规bean类
public class Violations {
	private Long violationsID;//违规表ID
	private String violationsTime;//违规时间
	private String violationsWhy;//违规原因
	private String violationsResult;//违规结果
	private Long userID;//雇主ID
	private String stickTime;//置顶时间
	
	private Integer whyCount;
	public Violations() {
	}

	public Long getViolationsID() {
		return violationsID;
	}

	public void setViolationsID(Long violationsID) {
		this.violationsID = violationsID;
	}

	public String getViolationsTime() {
		return violationsTime;
	}

	public void setViolationsTime(String violationsTime) {
		this.violationsTime = violationsTime;
	}

	public String getViolationsWhy() {
		return violationsWhy;
	}

	public void setViolationsWhy(String violationsWhy) {
		this.violationsWhy = violationsWhy;
	}

	public String getViolationsResult() {
		return violationsResult;
	}

	public void setViolationsResult(String violationsResult) {
		this.violationsResult = violationsResult;
	}

	public Long getUserID() {
		return userID;
	}

	public void setUserID(Long userID) {
		this.userID = userID;
	}

	public String getStickTime() {
		return stickTime;
	}

	public void setStickTime(String stickTime) {
		this.stickTime = stickTime;
	}

	public Integer getWhyCount() {
		return whyCount;
	}

	public void setWhyCount(Integer whyCount) {
		this.whyCount = whyCount;
	}

	@Override
	public String toString() {
		return "Violations [violationsID=" + violationsID + ", violationsTime=" + violationsTime + ", violationsWhy="
				+ violationsWhy + ", violationsResult=" + violationsResult + ", userID=" + userID + ", stickTime="
				+ stickTime + "]";
	}
}
