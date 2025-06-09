package forest.kiosk.vo;

import java.util.Date;

public class KioskVo {
	private String centerId;
	private String placeId;
	private String kioskId;
	private String kioskName;
	private String kioskIp;
	private String delYn;
	private Date createDate;
	private String createUser;
	private Date updateDate;
	private String updateUser;
	private Integer orderNo;
	public String getCenterId() {
		return centerId;
	}
	public void setCenterId(String centerId) {
		this.centerId = centerId;
	}
	public String getPlaceId() {
		return placeId;
	}
	public void setPlaceId(String placeId) {
		this.placeId = placeId;
	}
	public String getKioskId() {
		return kioskId;
	}
	public void setKioskId(String kioskId) {
		this.kioskId = kioskId;
	}
	public String getKioskName() {
		return kioskName;
	}
	public void setKioskName(String kioskName) {
		this.kioskName = kioskName;
	}
	public String getKioskIp() {
		return kioskIp;
	}
	public void setKioskIp(String kioskIp) {
		this.kioskIp = kioskIp;
	}
	public String getDelYn() {
		return delYn;
	}
	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getCreateUser() {
		return createUser;
	}
	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	public String getUpdateUser() {
		return updateUser;
	}
	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}
	public Integer getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}
}
