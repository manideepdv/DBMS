import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import DbConnection.dbConnection;

public class checkValidation {
	public boolean isSubmit(String uname,String pname)
	{
		Connection connection = null;
		Statement statement = null;
		boolean flag=false;
try {
			
			
			String sql = "INSERT INTO result(uname,pname)VALUES"+ "('"+uname+"', '"+pname+"')";
			connection = dbConnection.openConnection();
			statement = connection.createStatement();
			statement.executeUpdate(sql);
			flag = true;
			
			}catch(SQLException ex) {
				ex.printStackTrace();
			}

return flag;

}	
	public boolean isValid(String uid)
	{
		Connection connection = null;
		ResultSet resultSet = null;
		Statement statement = null;
		boolean flag=false;
try {
			
			
			String sql = "SELECT * FROM result";
			connection = dbConnection.openConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				String uname=resultSet.getString(1);
				if (uname.equals(uid))
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

}
