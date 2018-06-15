package oss.bean;

public class classification {
	private Long classificationId;
	private String classificationName;
	private Long classificationPid;
	public classification() {
		super();
		// TODO 自动生成的构造函数存根
	}
	public classification(Long classificationId, String classificationName, Long classificationPid) {
		super();
		this.classificationId = classificationId;
		this.classificationName = classificationName;
		this.classificationPid = classificationPid;
	}
	public Long getClassificationId() {
		return classificationId;
	}
	public void setClassificationId(Long classificationId) {
		this.classificationId = classificationId;
	}
	public String getClassificationName() {
		return classificationName;
	}
	public void setClassificationName(String classificationName) {
		this.classificationName = classificationName;
	}
	public Long getClassificationPid() {
		return classificationPid;
	}
	public void setClassificationPid(Long classificationPid) {
		this.classificationPid = classificationPid;
	}

}
