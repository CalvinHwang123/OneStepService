package oss.bean;

public class Orders {

	private Long orderId;
	private Long userId;
	private Long orderStatusId;
	private Long worksId;
	private String orderTime;
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
	@Override
	public String toString() {
		return "Orders [orderId=" + orderId + ", userId=" + userId + ", orderStatusId=" + orderStatusId + ", worksId="
				+ worksId + ", orderTime=" + orderTime + "]";
	}
	
}
