package oss.biz;

import java.util.List;

import oss.bean.Users;
import oss.bean.demands;

/*
 * 业务管理Biz业务接口
 */
public interface BusiManageBiz {
	//华清修改：查询雇主信息
		public List<Users> Userlist();
		  public int DlUserID(long lo);
		  public int  Blacklist  (long lo);
		  public int  Disable  (long lo); 
		  public List<Users> providerlist();
		  public int providerupdatepow(long lo);
		  public int  providerBlacklist  (long lo); 
		  public int  providerDisable  (long lo); 
		  public int  enable  (long lo); 
		  public int  cancelBlacklist  (long lo);  
		  public List<Users> searchUser( String userAccount);
		  public List<demands> demandList();
		  public int  examine  (long examine);
		  public int  Audited  (long audited); 
	
	// 前台登入 wwj 6-17
	public abstract Users ForeLogin(Users users);

	// 前台注册 王伟杰 6-17
	public abstract int AddUsers(Users users);
	
	//唯一性验证   wwj  6-17
	public abstract List<Users> SelectName(Users users);
}
