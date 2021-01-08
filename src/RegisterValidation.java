import java.io.File;
import java.io.IOException;
import java.net.UnknownHostException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import org.bson.Document;

import com.mongodb.DB;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.gridfs.GridFS;
import com.mongodb.gridfs.GridFSInputFile;

import entity.address;
import entity.voter;
//import entity.student_details;
import DbConnection.dbConnection;
import DbConnection.dconnect;

public class RegisterValidation {
	public boolean isUpdated_details(voter vt)
	{
		Connection connection = null;
		Statement statement = null;
		boolean flag=false;
try {
			
			
			String sql = "INSERT INTO voters(fname,lname,email,phone,dob,uid,gender)VALUES"+ "('"+vt.getFirstname()+"','"+vt.getLastname()+"', '"+vt.getMail()+"', '"+vt.getPhone()+"', '"+vt.getDob()+"', '"+vt.getUid()+"', '"+vt.getGender()+"')";
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
	public boolean isUpdated_files(String file_path,String doc_type) throws IOException {
		boolean flag=false;
		MongoDatabase database=dconnect.createInstance();
		MongoCollection<Document> collection=database.getCollection("files");
		File jsp = new File(file_path);
		String f = "";

		File[] list = jsp.listFiles();
		for(int i=0;i<list.length;i++)
		{

		   f = list[i].getName();
		   
		   String path = list[i].getAbsolutePath();
		   String path_ch = path.replace('\\','/');
		   
		   
		   String newFileName = f.substring(0,f.indexOf("."));
		   File imageFile = new File(list[i].getPath());
		   GridFS gfsPhoto = new GridFS((DB) database, doc_type);
		   GridFSInputFile gfsFile = gfsPhoto.createFile(imageFile);
		   gfsFile.setFilename(newFileName);
		   gfsFile.save();
		  flag=true;
	}
		 return flag;
}
}
