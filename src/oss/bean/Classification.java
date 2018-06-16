package oss.bean;

public class Classification {
	private Long classificationId;
	private String classificationName;
	private Long classificationPid;
	public Classification() {
		super();
		// TODO 自动生成的构造函数存根
	}
	public Classification(Long classificationId, String classificationName, Long classificationPid) {
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
