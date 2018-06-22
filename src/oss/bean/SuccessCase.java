package oss.bean;

public class SuccessCase {
	private Long successCaseID;
	private String successCaseTitle;
	private String successCaseContext;
	private String successCaseTime;
	private String imageURL;
	private String stickTime;

	public SuccessCase() {
	}

	public Long getSuccessCaseID() {
		return successCaseID;
	}

	public void setSuccessCaseID(Long successCaseID) {
		this.successCaseID = successCaseID;
	}

	public String getSuccessCaseTitle() {
		return successCaseTitle;
	}

	public void setSuccessCaseTitle(String successCaseTitle) {
		this.successCaseTitle = successCaseTitle;
	}

	public String getSuccessCaseContext() {
		return successCaseContext;
	}

	public void setSuccessCaseContext(String successCaseContext) {
		this.successCaseContext = successCaseContext;
	}

	public String getSuccessCaseTime() {
		return successCaseTime;
	}

	public void setSuccessCaseTime(String successCaseTime) {
		this.successCaseTime = successCaseTime;
	}

	public String getImageURL() {
		return imageURL;
	}

	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}

	public String getStickTime() {
		return stickTime;
	}

	public void setStickTime(String stickTime) {
		this.stickTime = stickTime;
	}

}
