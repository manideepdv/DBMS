import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import DbConnection.dbConnection;
import entity.address;
import entity.candidate;

public class CandidateValidation {
	public boolean isUpdated_details(candidate cad)
	{
		Connection connection = null;
		Statement statement = null;
		boolean flag=false;
try {
			
			
			String sql = "INSERT INTO candidate(cfname,clname,cemail,cphone,cdob,cuid,cgender)VALUES"+ "('"+cad.getFirstname()+"','"+cad.getLastname()+"', '"+cad.getMail()+"', '"+cad.getPhone()+"', '"+cad.getDob()+"', '"+cad.getUid()+"', '"+cad.getGender()+"')";
			connection = dbConnection.openConnection();
			statement = connection.createStatement();
			statement.executeUpdate(sql);
			flag = true;
			
			}catch(SQLException ex) {
				ex.printStackTrace();
			}
return flag;

			
	}
	public boolean isUpdated_address(address add) {
		Connection connection = null;
		Statement statement = null;
		boolean flag=false;
try {
			
			
			String sql = "INSERT INTO address(hno,area,city,district,state,pincode,uid)VALUES"+ "('"+add.getHno()+"','"+add.getArea()+"', '"+add.getCity()+"', '"+add.getDistrict()+"', '"+add.getState()+"', '"+add.getPincode()+"', '"+add.getUID()+"')";
			connection = dbConnection.openConnection();
			statement = connection.createStatement();
			statement.executeUpdate(sql);
			flag = true;
			
			}catch(SQLException ex) {
				ex.printStackTrace();
			}
return flag;
		
	}
	public boolean isUpdated(String uid,String pin,String dis,String state,String party)
	{
		Connection connection = null;
		Statement statement = null;
		boolean flag=false;
try {
			
			
			String sql = "INSERT INTO participation(pincode,state,district,uname)VALUES"+ "('"+pin+"', '"+state+"','"+dis+"','"+uid+"')";
			String sql1 = "INSERT INTO party(uname,pname)VALUES"+ "('"+uid+"', '"+party+"')";
			
			connection = dbConnection.openConnection();
			statement = connection.createStatement();
			statement.executeUpdate(sql);
			statement.executeUpdate(sql1);
			flag = true;
			
			}catch(SQLException ex) {
				ex.printStackTrace();
			}

return flag;
	}
}
