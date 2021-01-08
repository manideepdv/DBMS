<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "javax.servlet.http.*" %>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@ page import = "org.apache.commons.io.output.*"
import="com.mongodb.BasicDBObject"
     import="com.mongodb.DB"
     import="com.mongodb.DBCollection"
     import="com.mongodb.DBCursor"
     import="com.mongodb.MongoClient"
     import="java.net.UnknownHostException"
 %>

<%
   File file ;
   int maxFileSize = 5000 * 1024;
   int maxMemSize = 5000 * 1024;
   ServletContext context = pageContext.getServletContext();
   String filePath = context.getInitParameter("file-upload");

   // Verify the content type
   String contentType = request.getContentType();
   
   if ((contentType.indexOf("multipart/form-data") >= 0)) {
      DiskFileItemFactory factory = new DiskFileItemFactory();
      // maximum size that will be stored in memory
      factory.setSizeThreshold(maxMemSize);
      
      // Location to save data that is larger than maxMemSize.
      factory.setRepository(new File("c:\\temp"));

      // Create a new file upload handler
      ServletFileUpload upload = new ServletFileUpload(factory);
      
      // maximum file size to be uploaded.
      upload.setSizeMax( maxFileSize );
      
      try { 
    	  MongoClient mongoClient = null;
    	  try {
    	      mongoClient = new MongoClient();
    	  } catch (Exception e1) {
    	      // TODO Auto-generated catch block
    	      e1.printStackTrace();
    	  }
    	  // or, to connect to a replica set, supply a seed list of members
    	  //MongoClient mongoClient = new MongoClient(Arrays.asList(new ServerAddress("localhost", 27017),
    	    //                                    new ServerAddress("localhost", 27018),
    	      //                                  new ServerAddress("localhost", 27019)));

    	  DB db = mongoClient.getDB("voting");
    	  DBCollection coll;
    	  coll = db.getCollection("users");
    	  
    	   //       append("Number2", 2).append("Number3", 3);

    	  //System.out.println("Data Display");
    	  //
         // Parse the request to get file items.
         List fileItems = upload.parseRequest(request);

         // Process the uploaded file items
         Iterator i = fileItems.iterator();

         String fileName="";
         while ( i.hasNext () ) {
            FileItem fi = (FileItem)i.next();
            if ( !fi.isFormField () ) {
               // Get the uploaded file parameters
               String fieldName = fi.getFieldName();
               fileName = fi.getName();
               boolean isInMemory = fi.isInMemory();
               long sizeInBytes = fi.getSize();
            
               // Write the file
               if( fileName.lastIndexOf("\\") >= 0 ) {
                  file = new File( filePath + 
                  fileName.substring( fileName.lastIndexOf("\\"))) ;
               } else {
                  file = new File( filePath + 
                  fileName.substring(fileName.lastIndexOf("\\")+1)) ;
               }
               fi.write( file ) ;
              
            }
         }
         BasicDBObject doc = new BasicDBObject("id", session.getAttribute("uid")).append("dob_proof", fileName);

        // BasicDBObject doc = new BasicDBObject("img", fileName );
         coll.insert(doc);
         out.println("</body>");
         out.println("</html>");
      } catch(Exception ex) {
         System.out.println(ex);
      }
   } else {
      out.println("<html>");
      out.println("<head>");
      out.println("<title>Servlet upload</title>");  
      out.println("</head>");
      out.println("<body>");
      out.println("<p>No file uploaded</p>"); 
      out.println("</body>");
      out.println("</html>");
   }
   response.setHeader("Refresh", "5;url=upload.jsp");
%>
<html>
              <body>
              <div style=" position: fixed; right: 45%; top: 32%;">
				<div class="spinner-border text-primary" role="status">
					  <span class="sr-only">Loading...</span>
				
			
					</div>
				</div>
              </body>
              </html>
              