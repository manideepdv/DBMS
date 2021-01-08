package entity;

public class votingpage {
	private String firstname;
	private String lastname;
	private String partyname;
	public votingpage(String fname, String lname, String pname) {
		this.setFirstname(fname);
		this.setLastname(lname);
		this.setPartyname(pname);
	}
	private void setPartyname(String pname) {
		// TODO Auto-generated method stub
		this.partyname=pname;
		
	}
	private void setLastname(String lname) {
		// TODO Auto-generated method stub
		this.lastname=lname;
		
	}
	private void setFirstname(String fname) {
		// TODO Auto-generated method stub
		this.firstname=fname;
		
	}
	public String getFirstname() {
		return firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public String getPartyname() {
		return partyname;
	}
}
