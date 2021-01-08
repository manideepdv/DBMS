import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import DbConnection.dbConnection;

public class securityValidation {
	public boolean isSubmit(String uid,String que1,String que2)
	{
		Connection connection = null;
		Statement statement = null;
		boolean flag=false;
try {
			
			
			String sql = "INSERT INTO question(uname,que1,que2)VALUES"+ "('"+uid+"','"+que1+"', '"+que2+"')";
			connection = dbConnection.openConnection();
			statement = connection.createStatement();
			statement.executeUpdate(sql);
			flag = true;
			
			}catch(SQLException ex) {
				ex.printStackTrace();
			}

return flag;

}
	public boolean isCheck(String uid,String que1,String que2)
	{
		Connection connection = null;
		ResultSet resultSet = null;
		Statement statement = null;
		boolean flag=false;
try {
			
			
			String sql = "SELECT * FROM question where uname='"+uid+"'";
			connection = dbConnection.openConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				String ans1=resultSet.getString(2);
				String ans2=resultSet.getString(3);
				if (ans1.equals(que1)&&ans2.equals(que2))
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
