package entity;

public class result {

	private String partyname;
	private int count;
	public result(String pname,int cou) {
		this.setPartyname(pname);
		this.setCount(cou);
	}
	private void setPartyname(String pname) {
		// TODO Auto-generated method stub
		this.partyname=pname;
		
	}
	
	private void setCount(int count) {
		// TODO Auto-generated method stub
		this.count=count;
		
	}
	public int getCount() {
		return count;
	}
	public String getPartyname() {
		return partyname;
	}
}