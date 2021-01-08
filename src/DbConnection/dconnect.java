package DbConnection;

import com.mongodb.*;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

import java.net.UnknownHostException;

import org.bson.Document;

public class dconnect
{
	
	private static MongoClient connection=null;
	private static MongoDatabase database;


public static MongoDatabase createInstance() throws UnknownHostException 
{
	if(connection!=null) {
		return database;
	}
	else {
		connection=new MongoClient("localhost",27017);
		database=connection.getDatabase("voting"); 
		return database;
	}
	
}

public MongoCollection<Document> getCollection(String name)
{
     return database.getCollection(name);
}
	
}
