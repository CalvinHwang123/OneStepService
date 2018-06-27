package oss.bean;

public class Trading {
	private Long tradingId;
	private Long userId;
	private Long amount;
	private Long demandId;
	private Long amountType;
	private String tradingTime;
	
	public Trading() {
		
	}

	public Long getTradingId() {
		return tradingId;
	}

	public void setTradingId(Long tradingId) {
		this.tradingId = tradingId;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getAmount() {
		return amount;
	}

	public void setAmount(Long amount) {
		this.amount = amount;
	}

	public Long getDemandId() {
		return demandId;
	}

	public void setDemandId(Long demandId) {
		this.demandId = demandId;
	}

	public Long getAmountType() {
		return amountType;
	}

	public void setAmountType(Long amountType) {
		this.amountType = amountType;
	}

	public String getTradingTime() {
		return tradingTime;
	}

	public void setTradingTime(String tradingTime) {
		this.tradingTime = tradingTime;
	}
	
}
