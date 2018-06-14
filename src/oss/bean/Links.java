package oss.bean;

public class Links {
	private Long linksid;// 链接ID
	private String linksname;// 链接名称
	private String linksurl;// 链接地址

	public Links() {

	}

	public Links(Long linksid, String linksname, String linksurl) {
		super();
		this.linksid = linksid;
		this.linksname = linksname;
		this.linksurl = linksurl;
	}

	public Long getLinksid() {
		return linksid;
	}

	public void setLinksid(Long linksid) {
		this.linksid = linksid;
	}

	public String getLinksname() {
		return linksname;
	}

	public void setLinksname(String linksname) {
		this.linksname = linksname;
	}

	public String getLinksurl() {
		return linksurl;
	}

	public void setLinksurl(String linksurl) {
		this.linksurl = linksurl;
	}
	
}
