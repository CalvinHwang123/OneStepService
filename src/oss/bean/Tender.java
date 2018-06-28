package oss.bean;
/*
 * by hsp 6-28 10:38
 * 投标需求关系类
 * 
 */
public class Tender {
	private Long tenderID;
	private Long demandID;//需求ID
	private Long userID;//投标的服务商的ID
	private Long releaserID;//需求发布方的ID
	
	public Tender() {
	}

	public Long getTenderID() {
		return tenderID;
	}

	public void setTenderID(Long tenderID) {
		this.tenderID = tenderID;
	}

	public Long getDemandID() {
		return demandID;
	}

	public void setDemandID(Long demandID) {
		this.demandID = demandID;
	}

	public Long getUserID() {
		return userID;
	}

	public void setUserID(Long userID) {
		this.userID = userID;
	}

	public Long getReleaserID() {
		return releaserID;
	}

	public void setReleaserID(Long releaserID) {
		this.releaserID = releaserID;
	}
	
	
}
