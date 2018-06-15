package oss.bean;

public class Information {
	private Long InformationId;// 资讯ID
	private String InformationTitle;// 资讯标题
	private String InformationContext;// 资讯内容
	private String InformationTime;// 资讯时间
	
	public Information() {
		
	}
	public Information(Long informationId, String informationTitle, String informationContext, String informationTime) {
		super();
		InformationId = informationId;
		InformationTitle = informationTitle;
		InformationContext = informationContext;
		InformationTime = informationTime;
	}
	public Long getInformationId() {
		return InformationId;
	}
	public void setInformationId(Long informationId) {
		InformationId = informationId;
	}
	public String getInformationTitle() {
		return InformationTitle;
	}
	public void setInformationTitle(String informationTitle) {
		InformationTitle = informationTitle;
	}
	public String getInformationContext() {
		return InformationContext;
	}
	public void setInformationContext(String informationContext) {
		InformationContext = informationContext;
	}
	public String getInformationTime() {
		return InformationTime;
	}
	public void setInformationTime(String informationTime) {
		InformationTime = informationTime;
	}

}
