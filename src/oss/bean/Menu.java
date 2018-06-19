package oss.bean;

public class Menu {
	private Long MenuID;// 菜单ID
	private String MenuPID;// 一级菜单ID
	private String MenuName;// 菜单名称
	private String Url;// 菜单路径

	public Menu() {

	}

	public Menu(Long menuID, String menuPID, String menuName, String url) {

		MenuID = menuID;
		MenuPID = menuPID;
		MenuName = menuName;
		Url = url;
	}

	public Long getMenuID() {
		return MenuID;
	}

	public void setMenuID(Long menuID) {
		MenuID = menuID;
	}

	public String getMenuPID() {
		return MenuPID;
	}

	public void setMenuPID(String menuPID) {
		MenuPID = menuPID;
	}

	public String getMenuName() {
		return MenuName;
	}

	public void setMenuName(String menuName) {
		MenuName = menuName;
	}

	public String getUrl() {
		return Url;
	}

	public void setUrl(String url) {
		Url = url;
	}

}
