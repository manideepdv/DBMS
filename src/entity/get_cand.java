package entity;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import DbConnection.dbConnection;

public class get_cand {

public List<votingpage> get(String USN) {
		
		List<votingpage> list = null;
		votingpage vt=null;
		Connection connection = null;
		ResultSet resultSet = null;
		Statement statement = null;
		
		list = new ArrayList<votingpage>();
		String sql="select pname,cfname,clname from party,candidate where candidate.cuid=party.uname and candidate.cfname in (select cfname from candidate,address where candidate.cuid=address.uid and address.pincode in(select pincode from voters,address where voters.uid = address.uid and voters.uid='"+USN+"'))";
		try {
			connection = dbConnection.openConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				vt=new votingpage(resultSet.getString(2),resultSet.getString(3),resultSet.getString(1));
				list.add(vt);
			}
			System.out.print(vt.getPartyname());
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return list;

	}



}

