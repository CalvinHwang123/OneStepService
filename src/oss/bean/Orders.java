package oss.bean;

public class Orders {

	private Long orderId;
	private Long userId;
	private Users users;
	private Long orderStatusId;
	private Long worksId;
	private String orderTime;
	private Works works;
	private Long worksPrice;
	public Orders() {
	}
	public Long getOrderId() {
		return orderId;
	}
	public void setOrderId(Long orderId) {
		this.orderId = orderId;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public Long getOrderStatusId() {
		return orderStatusId;
	}
	public void setOrderStatusId(Long orderStatusId) {
		this.orderStatusId = orderStatusId;
	}
	public Long getWorksId() {
		return worksId;
	}
	public void setWorksId(Long worksId) {
		this.worksId = worksId;
	}
	public String getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}
	
	public Works getWorks() {
		return works;
	}
	public void setWorks(Works works) {
		this.works = works;
	}
	
	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}
	
	public Long getWorksPrice() {
		return worksPrice;
	}
	public void setWorksPrice(Long worksPrice) {
		this.worksPrice = worksPrice;
	}
	@Override
	public String toString() {
		return "Orders [orderId=" + orderId + ", userId=" + userId + ", orderStatusId=" + orderStatusId + ", worksId="
				+ worksId + ", orderTime=" + orderTime + "]";
	}
	
}
