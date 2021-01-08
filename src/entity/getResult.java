package entity;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import DbConnection.dbConnection;

public class getResult {
	public List<result> getRes()
	{
		List<result> list = null;
		result vt=null;
		Connection connection = null;
		ResultSet resultSet = null;
		Statement statement = null;
		list = new ArrayList<result>();
		String sql = "select pname,count(pname) from result group by pname";
		try {
			connection = dbConnection.openConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				vt=new result(resultSet.getString(1),resultSet.getInt(2));
				list.add(vt);
			}
			System.out.print(vt.getCount());
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return list;
}
	public String getWin() {
		
		Connection connection = null;
		ResultSet resultSet = null;
		Statement statement = null;
		String res=null;
	try {
			
			
			String sql = "select pname,count(*) from result group by pname order by count(*) desc limit 1";
			connection = dbConnection.openConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				res=resultSet.getString(1);
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
	return res;

	}

}

