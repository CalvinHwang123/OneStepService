//jhx 2018-6-14
package oss.bean;

public class Emps {
	private Long empID;// 员工ID
	private String empAccount;// 员工账号
	private String empPwd;// 员工密码
	private String empName;// 员工名称
	private String empPhone;// 员工电话
	private String empIdentity;// 员工身份证
	private String empEmail;// 员工电子邮件
	private String empAddress;// 员工地址
	private Long empStatusID;// 员工账号状态

	public Emps() {

	}

	public Emps(Long empID, String empAccount, String empPwd, String empName, String empPhone, String empIdentity,
			String empEmail, String empAddress, Long empStatusID) {
		this.empID = empID;
		this.empAccount = empAccount;
		this.empPwd = empPwd;
		this.empName = empName;
		this.empPhone = empPhone;
		this.empIdentity = empIdentity;
		this.empEmail = empEmail;
		this.empAddress = empAddress;
		this.empStatusID = empStatusID;
	}

	public Long getEmpID() {
		return empID;
	}

	public void setEmpID(Long empID) {
		this.empID = empID;
	}

	public String getEmpAccount() {
		return empAccount;
	}

	public void setEmpAccount(String empAccount) {
		this.empAccount = empAccount;
	}

	public String getEmpPwd() {
		return empPwd;
	}

	public void setEmpPwd(String empPwd) {
		this.empPwd = empPwd;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getEmpPhone() {
		return empPhone;
	}

	public void setEmpPhone(String empPhone) {
		this.empPhone = empPhone;
	}

	public String getEmpIdentity() {
		return empIdentity;
	}

	public void setEmpIdentity(String empIdentity) {
		this.empIdentity = empIdentity;
	}

	public String getEmpEmail() {
		return empEmail;
	}

	public void setEmpEmail(String empEmail) {
		this.empEmail = empEmail;
	}

	public String getEmpAddress() {
		return empAddress;
	}

	public void setEmpAddress(String empAddress) {
		this.empAddress = empAddress;
	}

	public Long getEmpStatusID() {
		return empStatusID;
	}

	public void setEmpStatusID(Long empStatusID) {
		this.empStatusID = empStatusID;
	}

}
