package oss.bean;

public class RolePower {

	private Long rolePowerID;// 角色权限ID
	private Long roleID;// 角色ID
	private Long powerID;// 权限ID

	public RolePower() {

	}

	public RolePower(Long roleRolePowerID, Long roleID, Long powerID) {

		this.rolePowerID = roleRolePowerID;
		this.roleID = roleID;
		this.powerID = powerID;
	}

	public Long getRoleRolePowerID() {
		return rolePowerID;
	}

	public void setRoleRolePowerID(Long roleRolePowerID) {
		this.rolePowerID = roleRolePowerID;
	}

	public Long getRoleID() {
		return roleID;
	}

	public void setRoleID(Long roleID) {
		this.roleID = roleID;
	}

	public Long getPowerID() {
		return powerID;
	}

	public void setPowerID(Long powerID) {
		this.powerID = powerID;
	}

}
