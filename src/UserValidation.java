

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



import DbConnection.dbConnection;


public class UserValidation {
	public boolean isUserValid(String user,String password)
	{
		Connection connection = null;
		ResultSet resultSet = null;
		Statement statement = null;
		boolean flag=false;
try {
			
			
			String sql = "SELECT * FROM login";
			connection = dbConnection.openConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				String uname=resultSet.getString(1);
				String pass=resultSet.getString(2);
				if (user.equals(uname)&&password.equals(pass))
				{
					
					flag=true;
					break;
				}
				
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
	return flag;

}	
	public String getname(String user)
	{
		Connection connection = null;
		ResultSet resultSet = null;
		Statement statement = null;
		String fname=null;
		String lname=null;
try {
			
			
			String sql = "select fname,lname from voters where uid='"+user+"';";
			connection = dbConnection.openConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				fname=resultSet.getString(1);
				lname=resultSet.getString(2);
				
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
	return fname+" "+lname;

}	
	
	
	}
