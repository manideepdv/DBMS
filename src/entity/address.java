package entity;

public class address{
	private String Hno;
	private String Area;
	private String City;
	private String Pincode;
	private String District;
	private String State;
	private String UID;
	public address(String hno,String area,String city,String pincode,String district,String state,String uid)
	{
		this.setHno(hno);
		this.setArea(area);
		this.setCity(city);
		this.setPincode(pincode);
		this.setDistrict(district);
		this.setState(state);
		this.setUid(uid);
	}
	public String getHno() {
		return Hno;
	}
	public void setHno(String hno) {
		this.Hno = hno;
	}
	public String getArea() {
		return Area;
	}
	public void setArea(String area) {
		this.Area = area;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		this.City = city;
	}
	public String getPincode() {
		return Pincode;
	}
	public void setPincode(String pincode) {
		this.Pincode = pincode;
	}
	public String getDistrict() {
		return District;
	}
	public void setDistrict(String district) {
		this.District = district;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		this.State = state;
	}
	public String getUID() {
		return UID;
	}
	
	public void setUid(String uid) {
		this.UID=uid;
	}

}
