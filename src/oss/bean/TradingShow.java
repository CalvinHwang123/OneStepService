package oss.bean;

public class TradingShow {
	private Long tradingId;
	private String userName;
	private String userName2;
	private Long amount;
	private Long amountType;
	private String demandName;
	private String tradingTime;

	public TradingShow() {

	}

	public TradingShow(Long tradingId, String userName, String userName2, Long amount, Long amountType,
			String demandName, String tradingTime) {
		this.tradingId = tradingId;
		this.userName = userName;
		this.userName2 = userName2;
		this.amount = amount;
		this.amountType = amountType;
		this.demandName = demandName;
		this.tradingTime = tradingTime;
	}

	public Long getTradingId() {
		return tradingId;
	}

	public void setTradingId(Long tradingId) {
		this.tradingId = tradingId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserName2() {
		return userName2;
	}

	public void setUserName2(String userName2) {
		this.userName2 = userName2;
	}

	public Long getAmount() {
		return amount;
	}

	public void setAmount(Long amount) {
		this.amount = amount;
	}

	public Long getAmountType() {
		return amountType;
	}

	public void setAmountType(Long amountType) {
		this.amountType = amountType;
	}

	public String getDemandName() {
		return demandName;
	}

	public void setDemandName(String demandName) {
		this.demandName = demandName;
	}

	public String getTradingTime() {
		return tradingTime;
	}

	public void setTradingTime(String tradingTime) {
		this.tradingTime = tradingTime;
	}

}
