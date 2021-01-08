package entity;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import DbConnection.dbConnection;

public class get_details {
public List<voter> get_det(String USN) {
		
		List<voter> list_det = null;
		voter stu = null;
		Connection connection = null;
		ResultSet resultSet = null;
		Statement statement = null;
		//PreparedStatement preparedStatement = null;
		list_det = new ArrayList<voter>();
		String sql="SELECT * FROM voters WHERE uid='"+USN+"'";
		
		try {
			connection = dbConnection.openConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				stu = new voter(resultSet.getString(1),resultSet.getString(2),resultSet.getString(3),resultSet.getString(4),resultSet.getString(5),resultSet.getString(7),resultSet.getString(6));
				list_det.add(stu);
			}
			System.out.println(stu.getFirstname());
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return list_det;

	}
}
