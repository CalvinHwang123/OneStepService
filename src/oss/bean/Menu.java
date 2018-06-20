package oss.bean;

public class Menu {
	private Long menuID;// 菜单ID
	private String menuPID;// 一级菜单ID
	private String menuName;// 菜单名称
	private String url;// 菜单路径

	public Menu() {

	}

	public Menu(Long menuID, String menuPID, String menuName, String url) {
		super();
		this.menuID = menuID;
		this.menuPID = menuPID;
		this.menuName = menuName;
		this.url = url;
	}

	public Long getMenuID() {
		return menuID;
	}

	public void setMenuID(Long menuID) {
		this.menuID = menuID;
	}

	public String getMenuPID() {
		return menuPID;
	}

	public void setMenuPID(String menuPID) {
		this.menuPID = menuPID;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}
