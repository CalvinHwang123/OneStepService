package oss.bean;

/*
 * 雇主故事bean    黄绍鹏6-13  22：20
 */
public class UserStory {
	private Long storyID;
	private String storyTitle;
	private String storyContext;
	private String storyTime;
	private Long userID;
	private String imageURL;
	private String stickTime;

	public UserStory() {
	}

	public Long getStoryID() {
		return storyID;
	}

	public void setStoryID(Long storyID) {
		this.storyID = storyID;
	}

	public String getStoryTitle() {
		return storyTitle;
	}

	public void setStoryTitle(String storyTitle) {
		this.storyTitle = storyTitle;
	}

	public String getStoryContext() {
		return storyContext;
	}

	public void setStoryContext(String storyContext) {
		this.storyContext = storyContext;
	}

	public String getStoryTime() {
		return storyTime;
	}

	public void setStoryTime(String storyTime) {
		this.storyTime = storyTime;
	}

	public Long getUserID() {
		return userID;
	}

	public void setUserID(Long userID) {
		this.userID = userID;
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
