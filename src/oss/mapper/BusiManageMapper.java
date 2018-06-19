package oss.mapper;


import java.util.List;

import oss.annotation.MyRepository;
import oss.bean.Users;
import oss.bean.demands;
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
	  
	  public int  enable  (long lo); 
	  
	  public int  cancelBlacklist  (long lo);  
	  public List<Users> searchUser( String userAccount);
	  public List<demands> demandList();
	  public int  examine  (long examine); 
	  
	  public int  Audited  (long audited); 
}
