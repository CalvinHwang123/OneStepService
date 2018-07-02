package oss.bean;

/*
 * 
 * 所有表格页面的条件类
 * 
 */
public class Condition {
	private String startDate;// 开始日期
	private String endDate;// 截至日期
	private String title;// 标题
	private int classPid;// 上级id
	private int beWorksPrice;// 起始价格
	private int endWorksPrice;// 结束价格
	private int descenDingOrder;// 降序
	private int ascenDing;//升序
	private String classIficaTion;// 分类


	public Condition() {
	}
	public String getClassIficaTion() {
		return classIficaTion;
	}
	
	public void setClassIficaTion(String classIficaTion) {
		this.classIficaTion = classIficaTion;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getClassPid() {
		return classPid;
	}

	public void setClassPid(int classPid) {
		this.classPid = classPid;
	}

	public int getBeWorksPrice() {
		return beWorksPrice;
	}

	public void setBeWorksPrice(int beWorksPrice) {
		this.beWorksPrice = beWorksPrice;
	}

	public int getEndWorksPrice() {
		return endWorksPrice;
	}

	public void setEndWorksPrice(int endWorksPrice) {
		this.endWorksPrice = endWorksPrice;
	}

	public int getDescenDingOrder() {
		return descenDingOrder;
	}

	public void setDescenDingOrder(int descenDingOrder) {
		this.descenDingOrder = descenDingOrder;
	}

	public int getAscenDing() {
		return ascenDing;
	}

	public void setAscenDing(int ascenDing) {
		this.ascenDing = ascenDing;
	}

	
	

}
