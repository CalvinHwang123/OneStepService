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
	  
}
