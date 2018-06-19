package oss.mapper;


import java.util.List;
import oss.annotation.MyRepository;
import oss.bean.Users;
/*
 * 业务管理Mapper接口
 */
@MyRepository
public interface BusiManageMapper {
	//华清修改：查询雇主信息
	  public List<Users> listUser();
	  public int DlUserID(long lo);
	  public int  Blacklist  (long lo); 
	  public int  Disable  (long lo); 
	  
	  public List<Users> providerlist();
	  public int providerupdatepow(long lo);
	  public int  providerBlacklist  (long lo); 
	  public int  providerDisable  (long lo); 
	  
		//前台登入  wwj  6-17
		public abstract Users ForeLogin(Users users);
		//前台注册  王伟杰  6-17
		public abstract int AddUsers(Users users);
		
		//唯一性验证   wwj  6-17
		public abstract List<Users> SelectName(Users users);
		
}
