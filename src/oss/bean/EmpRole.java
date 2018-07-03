package oss.bean;

public class EmpRole {
	private Long empRoleID;// 员工角色ID
	private Long empID;// 员工ID
	private Long roleID;// 角色ID

	public EmpRole() {

	}

	public EmpRole(Long empRoleID, Long empID, Long roleID) {

		this.empRoleID = empRoleID;
		this.empID = empID;
		this.roleID = roleID;
	}

	public Long getEmpRoleID() {
		return empRoleID;
	}

	public void setEmpRoleID(Long empRoleID) {
		this.empRoleID = empRoleID;
	}

	public Long getEmpID() {
		return empID;
	}

	public void setEmpID(Long empID) {
		this.empID = empID;
	}

	public Long getRoleID() {
		return roleID;
	}

	public void setRoleID(Long roleID) {
		this.roleID = roleID;
	}

}
