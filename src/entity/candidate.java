package entity;

public class candidate extends details{
     private String Uid;
	public candidate(String firstname, String lastname, String mail, String phone, String dob,String uid, String gender) {
		super(firstname, lastname, mail, phone, dob, gender);
		this.setUid(uid);
	}
	/*public void setPincode(int pincode) {
		Pincode=pincode;
		
	}
	public int getPincode() {
		return Pincode;
	}
	
	public void setDistrict(String district) {
		District=district;
		
	}
	public String getDistrict() {
		return District;
	}
	
	public void setState(String state) {
		State=state;
		
	}
	public String getState() {
		return State;
	}*/
	public void setUid(String uid) {
		Uid=uid;
		
	}
	public String getUid() {
		return Uid;
	}

}
