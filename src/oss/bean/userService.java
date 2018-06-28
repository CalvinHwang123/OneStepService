package oss.bean;

public class userService {
	private Long userServiceID;
	private Long userID;
	private Long serviceID;
	private Long relationTypeID;
	public Users checkUsers;
	public userService() {
		
	}
	public Long getUserServiceID() {
		return userServiceID;
	}
	public void setUserServiceID(Long userServiceID) {
		this.userServiceID = userServiceID;
	}
	public Long getUserID() {
		return userID;
	}
	public void setUserID(Long userID) {
		this.userID = userID;
	}
	public Long getServiceID() {
		return serviceID;
	}
	public void setServiceID(Long serviceID) {
		this.serviceID = serviceID;
	}
	public Long getRelationTypeID() {
		return relationTypeID;
	}
	public void setRelationTypeID(Long relationTypeID) {
		this.relationTypeID = relationTypeID;
	}
	public Users getCheckUsers() {
		return checkUsers;
	}
	public void setCheckUsers(Users checkUsers) {
		this.checkUsers = checkUsers;
	}
	
}
