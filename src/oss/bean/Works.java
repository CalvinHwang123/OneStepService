package oss.bean;

public class Works {
	private Long worksId;
	private Long usersId;
	private Long classificationId;
	private String worksName;
	private String worksPrice;
	private Long worksNum;
	private Long worksStatusId;
	private String url;
	private Classification checkClass;
	private Users checkUser;

	public Works() {

	}

	public Works(Long worksId, Long usersId, Long classificationId, String worksName, String worksPrice, Long worksNum,
			Long worksStatusId, String url, Classification checkClass, Users checkUser) {
		super();
		this.worksId = worksId;
		this.usersId = usersId;
		this.classificationId = classificationId;
		this.worksName = worksName;
		this.worksPrice = worksPrice;
		this.worksNum = worksNum;
		this.worksStatusId = worksStatusId;
		this.url = url;
		this.checkClass = checkClass;
		this.checkUser = checkUser;
	}

	public Long getWorksId() {
		return worksId;
	}

	public void setWorksId(Long worksId) {
		this.worksId = worksId;
	}

	public Long getUsersId() {
		return usersId;
	}

	public void setUsersId(Long usersId) {
		this.usersId = usersId;
	}

	public Long getClassificationId() {
		return classificationId;
	}

	public void setClassificationId(Long classificationId) {
		this.classificationId = classificationId;
	}

	public String getWorksName() {
		return worksName;
	}

	public void setWorksName(String worksName) {
		this.worksName = worksName;
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

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Classification getCheckClass() {
		return checkClass;
	}

	public void setCheckClass(Classification checkClass) {
		this.checkClass = checkClass;
	}

	public Users getCheckUser() {
		return checkUser;
	}

	public void setCheckUser(Users checkUser) {
		this.checkUser = checkUser;
	}

}
