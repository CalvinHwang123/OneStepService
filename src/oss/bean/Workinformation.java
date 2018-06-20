package oss.bean;

public class Workinformation {
	private Long worksId;
	private Long userId;
	private String worksName;
	private Long classIficstionId;
	private String worksPrice;
	private Long worksNum;
	private Long worksStatusId;
	private Users userName;
	
	public Workinformation() {
		super();
		// TODO 自动生成的构造函数存根
	}
	public Workinformation(Long worksId, Long userId, String worksName, Long classIficstionId, String worksPrice,
			Long worksNum, Long worksStatusId) {
		super();
		this.worksId = worksId;
		this.userId = userId;
		this.worksName = worksName;
		this.classIficstionId = classIficstionId;
		this.worksPrice = worksPrice;
		this.worksNum = worksNum;
		this.worksStatusId = worksStatusId;
	}
	public Long getWorksId() {
		return worksId;
	}
	public void setWorksId(Long worksId) {
		this.worksId = worksId;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public String getWorksName() {
		return worksName;
	}
	public void setWorksName(String worksName) {
		this.worksName = worksName;
	}
	public Long getClassIficstionId() {
		return classIficstionId;
	}
	public void setClassIficstionId(Long classIficstionId) {
		this.classIficstionId = classIficstionId;
	}
	public String getWorksPrice() {
		return worksPrice;
	}
	public void setWorksPrice(String worksPrice) {
		this.worksPrice = worksPrice;
	}
	public Long getWorksNum() {
		return worksNum;
	}
	public void setWorksNum(Long worksNum) {
		this.worksNum = worksNum;
	}
	public Long getWorksStatusId() {
		return worksStatusId;
	}
	public void setWorksStatusId(Long worksStatusId) {
		this.worksStatusId = worksStatusId;
	}
	public Users getUserName() {
		return userName;
	}
	public void setUserName(Users userName) {
		this.userName = userName;
	}
	
	
}
