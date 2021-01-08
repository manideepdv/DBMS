<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.mongodb.BasicDBObject"
     import="com.mongodb.DB"
     import="com.mongodb.DBCollection"
     import="com.mongodb.DBCursor"
     import="com.mongodb.MongoClient"
     import="java.net.UnknownHostException"
    %>
    <% 
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
//BasicDBObject doc = new BasicDBObject("Number1", 1).
 //       append("Number2", 2).append("Number3", 3);

//System.out.println("Data Display");
//coll.insert(doc);

/*DBCursor cursor = coll.find();
try {
   while(cursor.hasNext()) {
       out.println(cursor.next());
   }
} finally {
   //mongoClient.dropDatabase("test");
   cursor.close();

}*/
    %>
<!DOCTYPE html>
<html>
<head>
<title>Upload Page</title>
<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="css/bootstrap.min.css" >
        <link rel="stylesheet" href="css/bootstrap.css" >
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/main.css">
</head>
<body>
<div class="container">
    <div class="row">
    <div class="col-md-12 col-xs-12">
    <div class="panel panel-default">
    <div class="panel-heading clearfix text-center">
    <p class="panel-title heading1">
    <font style="vertical-align: inherit; margin-bottom: 2px;">
               Details Verification Forms
    </font>
    </p>
    </div>
    <div class="panel-body">
<div class="alert alert-info">
     			<label class="text-left font-weight-400">
      			<font style="vertical-align: inherit;">
      			<font style="vertical-align: inherit;">
      			 	 Upload supporting documents (Supported formats .jpg, .png, .bmp, .jpeg)  &nbsp;
    			</font>
    			</font>
    			</label>
    			<label class="text-left font-weight-400">
      			<font style="vertical-align: inherit;">
      			<font style="vertical-align: inherit;">
      			 	 <b>List Of Supported Documents</b>  &nbsp;
    			</font>
    			</font>
    			</label>
    		</div>
    		 <div class="row">
    		<div class="upload form-group">

                          <div class="col-md-12">
                          
                                <div class="col-md-4 divheight">
                              <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                                Age proof
                               </font></font></label>
                              <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                            </div>
                            <div class="col-md-12 divborder">

                              <div class="col-md-3">
                              <span>
                                <form action = "imgup.jsp" method = "post"
								         enctype = "multipart/form-data">
                                  <input data-val="true" id="hdnDOBstring" name="DOBProof_string" type="hidden" value="">
                                  <input class="ddlWidth" id="applicant_identity_image" name="file" type="file" value="" size = "50">
                                  <input class="btn btn-success" type="submit" value="Upload" />
								</form>
                                  
                                </span>
                                <span class="field-validation-valid" data-valmsg-for="DOBProof_string" data-valmsg-replace="true"></span>

                                <span class="fileinput-filename"></span>
                            </div> 
								   
                              <div class="col-md-2 col-md-offset-1">
                                <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                                  Document Type
                                 </font></font></label>
                                <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                              </div>
                               
                              <div class="col-md-3">
                                <select value="" class="form-control" id="IDProoflist" name="DOBProof_type"><option value=""><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Select</font></font></option>
									<option value="Birth Certificate"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Birth Certificate</font></font></option>
									<option value="Marksheet of class"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Marksheet of class 10 or 8 or 5</font></font></option>
									<option value="Indian Passport"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Indian Passport</font></font></option>
									<option value="PAN Card"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">PAN Card</font></font></option>
									<option value="Driving License"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Driving License</font></font></option>
									<option value="Aadhar"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Aadhar letter issued by UIDAI</font></font></option>
								</select>
                              </div>
                            </div>
                            <br>
                            <div class="col-md-3">
                                <span>
                                  
                                   
                                </span>
                               
                              </div>
                          </div>

                          <div class="col-md-12">
                            <div class="col-md-4 divheight">
                              <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                                Address proof
                               </font></font></label>
                              <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                            </div>
                            <div class="col-md-12 divborder">
                            
 						<div class="col-md-3">
                                <span>
                                <form action = "imgup1.jsp" method = "post"
								         enctype = "multipart/form-data">
                                  <input data-val="true" id="hdnDOBstring" name="DOBProof_string" type="hidden" value="">
                                  <input class="ddlWidth" id="applicant_identity_image" name="file" type="file" value="" size = "50">
                                  <input class="btn btn-success" type="submit" value="Upload" />
								      </form>
                                  
                                </span>
                                <span class="field-validation-valid" data-valmsg-for="DOBProof_string" data-valmsg-replace="true"></span>

                                <span class="fileinput-filename"></span>
                            </div> 
								      
                              
                              <div class="col-md-2 col-md-offset-1">
                                <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                                  Document Type
                                 </font></font></label>
                                <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                              </div>
                              <div class="col-md-3">
                                <select value="" class="form-control" id="AddressProoflist" name="ResidenceProof_type"><option value=""><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Select</font></font></option>
									<option value="Indian Passport"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Indian Passport</font></font></option>
									<option value="Driving License"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Driving License</font></font></option>
									<option value="Bank"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Bank / Kisan / Post Office current Pass Book</font></font></option>
									<option value="Ration Card"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Ration Card</font></font></option>
									<option value="Income Tax"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Income Tax Assessment Order</font></font></option>
									<option value="Telephone bill"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Telephone bill</font></font></option>
									<option value="Electricity bill"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Electricity bill</font></font></option>
									<option value="Gas connection bill"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Gas connection bill</font></font></option>
								</select>
                              </div>
                            </div>
                          </div>
</div>
</div>
 <div> 
                      		<hr>
            			</div>
</div>
</div>
                         </div>
                        </div> 
                        
                        </div>
</body>
</html>