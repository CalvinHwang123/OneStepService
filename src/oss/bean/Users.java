//jhx 2018-6-14 11:00
package oss.bean;

public class Users {
	private Long userID;// 用户ID
	private String userName;// 用户名称名称
	private String userAccount;// 用户账号
	private String userPwd;// 用户密码
	private String userIdentity;// 用户身份证
	private String userPhone;// 用户电话
	private String userEmail;// 用户电子邮件
	private Long userBalance;// 用户余额
	private String userIntroduction;// 用户简介
	private String userAddress;// 用户地址
	private Long userStatusID;// 用户账号状态
	private Long userCredit;// 用户信用分
	private Long userType;// 用户类型
	private String imageUrl;           
	private  Credit  credit;
private userService checkUsers;
	public Users() {

	}
	public Users(Long userID, String userName, String userAccount, String userPwd, String userIdentity,
			String userPhone, String userEmail, Long userBalance, String userIntroduction, String userAddress,

			Long userStatusID, Long userCredit, Long userType) {

		
		super();
		this.userID = userID;
		this.userName = userName;
		this.userAccount = userAccount;
		this.userPwd = userPwd;
		this.userIdentity = userIdentity;
		this.userPhone = userPhone;
		this.userEmail = userEmail;
		this.userBalance = userBalance;
		this.userIntroduction = userIntroduction;
		this.userAddress = userAddress;
		this.userStatusID = userStatusID;
		this.userCredit = userCredit;
		this.userType = userType;


	}
	public Long getUserID() {
		return userID;
	}
	public void setUserID(Long userID) {
		this.userID = userID;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserAccount() {
		return userAccount;
	}
	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserIdentity() {
		return userIdentity;
	}
	public void setUserIdentity(String userIdentity) {
		this.userIdentity = userIdentity;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public Long getUserBalance() {
		return userBalance;
	}
	public void setUserBalance(Long userBalance) {
		this.userBalance = userBalance;
	}
	public String getUserIntroduction() {
		return userIntroduction;
	}
	public void setUserIntroduction(String userIntroduction) {
		this.userIntroduction = userIntroduction;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public Long getUserStatusID() {
		return userStatusID;
	}
	public void setUserStatusID(Long userStatusID) {
		this.userStatusID = userStatusID;
	}
	public Long getUserCredit() {
		return userCredit;
	}
	public void setUserCredit(Long userCredit) {
		this.userCredit = userCredit;
	}
	public Long getUserType() {
		return userType;
	}
	public void setUserType(Long userType) {
		this.userType = userType;
	}
	public Credit getCredit() {
		return credit;
	}
	public void setCredit(Credit credit) {
		this.credit = credit;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public userService getCheckUsers() {
		return checkUsers;
	}
	public void setCheckUsers(userService checkUsers) {
		this.checkUsers = checkUsers;
	}

}
