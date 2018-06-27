package oss.bean;

public class Credit {
	private Long creditID;//信用表ID
	private Long userID;//用户ID
	private Long creditType;//信用类型
	private Long creditPoints;//信用分
	private String creditWhy;//信用变动原因
	private Users checkUsers;
	public Credit() {
		super();
	}
	
	public Long getCreditID() {
		return creditID;
	}
	public void setCreditID(Long creditID) {
		this.creditID = creditID;
	}
	public Long getUserID() {
		return userID;
	}
	public void setUserID(Long userID) {
		this.userID = userID;
	}
	public Long getCreditType() {
		return creditType;
	}
	public void setCreditType(Long creditType) {
		this.creditType = creditType;
	}
	public Long getCreditPoints() {
		return creditPoints;
	}
	public void setCreditPoints(Long creditPoints) {
		this.creditPoints = creditPoints;
	}
	public String getCreditWhy() {
		return creditWhy;
	}
	public void setCreditWhy(String creditWhy) {
		this.creditWhy = creditWhy;
	}

	public Users getCheckusers() {
		return checkUsers;
	}

	public void setCheckusers(Users checkUsers) {
		this.checkUsers = checkUsers;
	}
	
	
}
