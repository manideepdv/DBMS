package entity;

public class details {

	private String firstname;
	private String lastname;
	private String mail;
	private String phone;
	private String gender;
	private String dob;
	
	
	details(String firstname,String lastname,String mail,String phone,String dob,String gender)
	{
		this.setFirstname(firstname);
		this.setLastname(lastname);
		this.setMail(mail);
		this.setPhone(phone);
		this.setDob(dob);
		this.setGender(gender);
		
	}
	public details() {
	
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
}
