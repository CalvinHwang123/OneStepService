package oss.biz;

import java.util.List;

import oss.bean.Condition;
import oss.bean.Credit;
import oss.bean.Users;
import oss.bean.Violations;
import oss.bean.demands;

/*
 * 业务管理Biz业务接口
 */
public interface BusiManageBiz {
	// 华清修改：查询雇主列表信息
		public List<Users> listUser(Condition condition);

		// 华清修改：查询服务商列表信息
		public List<Users> providerList(Condition condition);

		// 华清修改：查询需求列表
		public List<demands> demandList(Condition condition);
		// 华清修改：重置密码
		public int updatePow(long lo);

		// 华清修改：加入黑名单
		public int Blacklist(long lo);

		// 华清修改：取消黑名单
		public int cancelBlacklist(long lo);

		// 华清修改：禁用
		public int Disable(long lo);

		// 华清修改：启用
		public int enable(long lo);


		// 华清修改：审核通过
		public int examine(long examine);

		// 华清修改：审核不通过
		public int Audited(long audited);
		// 华清修改：扣除用户信用分
		public int userCreditScore(Credit credit);

		// 华清修改：明细表信用
		public int creditCreditScore(Credit credit);

		// 华清修改：违规表违规
		public int violaTionCreditScore(Violations violations);

		
}
