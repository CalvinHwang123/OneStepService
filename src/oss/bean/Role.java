package oss.bean;

public class Role {
	private Long roleID;// 角色ID
	private String roleName;// 角色名称

	public Role() {

	}

	public Role(Long roleID, String roleName) {

		this.roleID = roleID;
		this.roleName = roleName;
	}

	public Long getRoleID() {
		return roleID;
	}

	public void setRoleID(Long roleID) {
		this.roleID = roleID;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

}
