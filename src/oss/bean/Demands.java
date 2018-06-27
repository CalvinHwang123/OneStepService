package oss.bean;

public class Demands {
	private Long demandID;// 需求ID	
	private Long classificationID;// 分类表ID
	private Long userID;// 雇主ID
	private Long demandstatusid;// 状态
	private String demandTitle;// 标题
	private String demandContent;// 内容
	private String demandRequire;// 要求
	private String userPhone;// 电话号码
	private String releaseTime;// 发布时间
	private String asoftTime;// 截止时间
	private Long tenderID;// 投标者ID
	//by hsp 6-26 9:07
	private Long demandPrice;//新增需求预算
	private Long tenderNumber;//可投标数
	
	public Demands() {
		super();
	}
	public Demands(Long demandID, Long classificationID, Long userID, Long demandstatusid, String demandTitle,
			String demandContent, String demandRequire, String userPhone, String releaseTime, String asoftTime,
			Long tenderID) {
		super();
		this.demandID = demandID;
		this.classificationID = classificationID;
		this.userID = userID;
		this.demandstatusid = demandstatusid;
		this.demandTitle = demandTitle;
		this.demandContent = demandContent;
		this.demandRequire = demandRequire;
		this.userPhone = userPhone;
		this.releaseTime = releaseTime;
		this.asoftTime = asoftTime;
		this.tenderID = tenderID;
	}
	public Long getDemandID() {
		return demandID;
	}
	public void setDemandID(Long demandID) {
		this.demandID = demandID;
	}
	public Long getClassificationID() {
		return classificationID;
	}
	public void setClassificationID(Long classificationID) {
		this.classificationID = classificationID;
	}
	public Long getUserID() {
		return userID;
	}
	public void setUserID(Long userID) {
		this.userID = userID;
	}
	public Long getDemandstatusid() {
		return demandstatusid;
	}
	public void setDemandstatusid(Long demandstatusid) {
		this.demandstatusid = demandstatusid;
	}
	public String getDemandTitle() {
		return demandTitle;
	}
	public void setDemandTitle(String demandTitle) {
		this.demandTitle = demandTitle;
	}
	public String getDemandContent() {
		return demandContent;
	}
	public void setDemandContent(String demandContent) {
		this.demandContent = demandContent;
	}
	public String getDemandRequire() {
		return demandRequire;
	}
	public void setDemandRequire(String demandRequire) {
		this.demandRequire = demandRequire;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getReleaseTime() {
		return releaseTime;
	}
	public void setReleaseTime(String releaseTime) {
		this.releaseTime = releaseTime;
	}
	public String getAsoftTime() {
		return asoftTime;
	}
	public void setAsoftTime(String asoftTime) {
		this.asoftTime = asoftTime;
	}
	public Long getTenderID() {
		return tenderID;
	}
	public void setTenderID(Long tenderID) {
		this.tenderID = tenderID;
	}
	public Long getDemandPrice() {
		return demandPrice;
	}
	public void setDemandPrice(Long demandPrice) {
		this.demandPrice = demandPrice;
	}
	public Long getTenderNumber() {
		return tenderNumber;
	}
	public void setTenderNumber(Long tenderNumber) {
		this.tenderNumber = tenderNumber;
	}
}
