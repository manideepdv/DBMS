import java.net.UnknownHostException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import org.bson.Document;

import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

import DbConnection.dbConnection;
import DbConnection.dconnect;

public class SignUpValidation {
	public boolean isSignUpValid(String password,String repassword)
	{
		if(password.equals(repassword))
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	public boolean isUpdated(String uid,String password)
	{
		Connection connection = null;
		Statement statement = null;
		boolean flag=false;
try {
			
			
			String sql = "INSERT INTO login(uid,password)VALUES"+ "('"+uid+"', '"+password+"')";
			connection = dbConnection.openConnection();
			statement = connection.createStatement();
			statement.executeUpdate(sql);
			flag = true;
			
			}catch(SQLException ex) {
				ex.printStackTrace();
			}

return flag;
	}
	public boolean isMongoUp(String user,String password) throws UnknownHostException {
		boolean flag=false;
		
		MongoDatabase database=dconnect.createInstance();
		MongoCollection<Document> collection=database.getCollection("users");
		Document doc=new Document();
		doc.append("_id", user);
		doc.append("pwd", password);
		collection.insertOne(doc);
		flag=true;
		return flag;
		
	}
	
}








