package entity;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import DbConnection.dbConnection;

public class get_address {
public List<address> get_add(String USN) {
		
		List<address> list_add = null;
		address stu = null;
		Connection connection = null;
		ResultSet resultSet = null;
		Statement statement = null;
		//PreparedStatement preparedStatement = null;
		list_add = new ArrayList<address>();
		String sql="SELECT * FROM address WHERE uid='"+USN+"'";
		
		try {
			connection = dbConnection.openConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				stu = new address(resultSet.getString(1),resultSet.getString(2),resultSet.getString(3),resultSet.getString(6),resultSet.getString(4),resultSet.getString(5),resultSet.getString(7));
				list_add.add(stu);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return list_add;

	}
}
