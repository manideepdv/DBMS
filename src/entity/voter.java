package entity;

public class voter extends details{
	private String uid;
	public voter(String firstname, String lastname, String mail, String phone, String dob, String gender,String uid) {
		super(firstname, lastname, mail, phone, dob, gender);
		this.setUid(uid);
		
	}
	
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid=uid;
	}

}
