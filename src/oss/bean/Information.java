package oss.bean;

public class Information {
	private Long informationId;// 资讯ID
	private String informationTitle;// 资讯标题
	private String informationContext;// 资讯内容
	private String informationTime;// 资讯时间
	
	public Information() {
		
	}

	public Information(Long informationId, String informationTitle, String informationContext, String informationTime) {
		super();
		this.informationId = informationId;
		this.informationTitle = informationTitle;
		this.informationContext = informationContext;
		this.informationTime = informationTime;
	}

	public Long getInformationId() {
		return informationId;
	}

	public void setInformationId(Long informationId) {
		this.informationId = informationId;
	}

	public String getInformationTitle() {
		return informationTitle;
	}

	public void setInformationTitle(String informationTitle) {
		this.informationTitle = informationTitle;
	}

	public String getInformationContext() {
		return informationContext;
	}

	public void setInformationContext(String informationContext) {
		this.informationContext = informationContext;
	}

	public String getInformationTime() {
		return informationTime;
	}

	public void setInformationTime(String informationTime) {
		this.informationTime = informationTime;
	}
	
}
