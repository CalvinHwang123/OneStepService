package oss.bean;
//华清修改
public class Users {
	private Long userID;//雇主ID
	private String userName;//雇主名称
	private String userAccount;//雇主账号
	private String userPwd; //雇主密码
	private String userIdentity;//身份证
	private String userPhone;//电话号码
	private String userEmail;//电子邮件
	private long userBalance;//余额
	private String userIntroduction;//简介
	private String userAddress;//地址	
	private long userStatusID;//雇主状态 启用/禁用/黑名单
    private Long userCredit;//	信用分
	public Users() {
		super();
	}
	public Users(Long userID, String userName, String userAccount, String userPwd, String userIdentity,
			String userPhone, String userEmail, long userBalance, String userIntroduction, String userAddress,
			long userStatusID, Long userCredit) {
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
	public long getUserBalance() {
		return userBalance;
	}
	public void setUserBalance(long userBalance) {
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
	public long getUserStatusID() {
		return userStatusID;
	}
	public void setUserStatusID(long userStatusID) {
		this.userStatusID = userStatusID;
	}
	public Long getUserCredit() {
		return userCredit;
	}
	public void setUserCredit(Long userCredit) {
		this.userCredit = userCredit;
	}
    
    
}
