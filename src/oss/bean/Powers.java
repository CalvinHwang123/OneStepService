package oss.bean;

public class Powers {
	private Long powerID;// 权限ID
	private String powerName;// 权限名称
	private String menuID;// 菜单ID

	public Powers() {

	}

	public Powers(Long powerID, String powerName, String menuID) {
		super();
		this.powerID = powerID;
		this.powerName = powerName;
		this.menuID = menuID;
	}

	public Long getPowerID() {
		return powerID;
	}

	public void setPowerID(Long powerID) {
		this.powerID = powerID;
	}

	public String getPowerName() {
		return powerName;
	}

	public void setPowerName(String powerName) {
		this.powerName = powerName;
	}

	public String getMenuID() {
		return menuID;
	}

	public void setMenuID(String menuID) {
		this.menuID = menuID;
	}

}
