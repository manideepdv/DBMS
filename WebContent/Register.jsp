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
        <title>Register Page</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="css/bootstrap.min.css" >
        <link rel="stylesheet" href="css/bootstrap.css" >
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/main.css">
      <!-- <script
			src="https://www.gstatic.com/firebasejs/live/3.0/firebase.js"></script>
				<script>
				                          function upload(){
										  var firebaseConfig = {
										    apiKey: 'AIzaSyDgGApD1HHMtj8rPgx262E85qXUw8IP1y4',
										    authDomain: 'mysample-4de24.firebaseapp.com',
										    databaseURL: 'https://mysample-4de24.firebaseio.com',
										    storageBucket: 'mysample-4de24.appspot.com'
										  };
										  firebase.initializeApp(firebaseConfig);
										
										
										  // Get a reference to the storage service, which is used to create references in your storage bucket
										 var storage = firebase.storage();
										 var filebutton=document.getElementById("applicant_identity_image");
										  filebutton.addEventListener("change",function(e){
										var file =e.target.files[0];
										var storageref=firebase.storage().ref("photo/"+file.name);
										var task=storageref.put(file);
										
										function error(err){
										
										}
										function complete(){
										
										}
										;
										
										  });  }
						         </script>-->
						         
    </head>
    <body>
    
    <div class="container">
    <div class="row">
    <div class="col-md-12 col-xs-12">
    <div class="panel panel-default">
    <div class="panel-heading clearfix text-center">
    <p class="panel-title heading1">
    <font style="vertical-align: inherit; margin-bottom: 2px;">
                Registration Form
    </font>
    </p>
    </div>
    <div class="panel-body">
    <div class="alert alert-secondary" role="alert">
		 <label class="fontsize_18 text-danger"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                Note: Fields marked with an asterisk (*) are mandatory
              </font></font></label>
     </div>
        <form action="/DBMS/RegisterServlet" method="post">
        <div class="alert alert-info">
     		<label class="text-left  font-weight-400">
      		<font style="vertical-align: inherit;">
      		<font style="vertical-align: inherit;">
      		Mandatory specifications&nbsp;
    		</font>
    		</font>
    		</label></div>
        <div> 
    	 <div class="row">
    	 <div class="form-group col-md-12 col-sm-12">
                          <div class="col-md-2">
                            <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                              (A) First Name
                             </font></font></label> <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                          </div>
                          <div class="col-md-5">
                            <input class="form-control" maxlength="50" name="fname" placeholder="First Name" type="text" value="" required>
                           <!-- <span class="field-validation-valid" data-valmsg-for="fname" data-valmsg-replace="true"></span> --> 
                          </div>
                          
            </div>
            </div>
            <div class="row">
    	     <div class="form-group col-md-12 col-sm-12">
                          <div class="col-md-2">
                            <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                              (B) Last Name
                             </font></font></label> <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                          </div>
                          <div class="col-md-5">
                            <input class="form-control" maxlength="50" name="lname" placeholder="Last Name" type="text" value="" required>
                            <!--<span class="field-validation-valid" data-valmsg-for="lname" data-valmsg-replace="true"></span>--> 
                          </div>
                          
            </div>
            </div>
            <div class="row">
            <div class="form-group col-md-12 col-sm-12">
                          <div class="col-md-2">
                            <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                              (C) Date Of Birth
                             </font></font></label> <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                          </div>
                          <div class="col-md-4">
                            <input class="form-control" id="calculated_age" name="applicant_age" type="date"   max="2001-11-28" required>
                            
                          </div>     
            </div>
            </div>
            <div class="row">
            <div class="form-group col-md-12 col-sm-12">
                          <div class="col-md-2">
                            <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                              (D) Gender
                             </font></font></label> <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                          </div>
            				<div class="col-md-4">
                            <select class="form-control select" id="elector_gender" name="GENDER" required>
                                <option value="S"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Select</font></font></option>
								<option value="Male"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Male</font></font></option>
								<option value="Female"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Female</font></font></option>
								<option value="Trans"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Third gender</font></font></option>
							</select>
                            <!--<span class="field-validation-error" data-valmsg-for="GENDER" data-valmsg-replace="true"><span id="elector_gender-error" class=""><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Please select gender</font></font></span></span>--> 
                          </div>
            </div>
            </div>
            <div class="row">
            <div class="form-group col-md-12 col-sm-12">
                          <div class="col-md-2">
                            <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                              (E) Email
                             </font></font></label> <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                          </div>
            			<div class="col-md-4 padding_0">
                          <input class="form-control" id="applicantEmail" maxlength="75" name="EMAIL_ID" placeholder="Email" type="text" value="" required>
                          <!-- <span class="field-validation-valid" data-valmsg-for="EMAIL_ID" data-valmsg-replace="true"></span>--> 
                        </div>
            </div>
            </div>
            <div class="row">
            <div class="form-group col-md-12 col-sm-12">
                          <div class="col-md-2">
                            <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                              (F) Phone
                             </font></font></label> <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                          </div>
                        <div class="col-md-4">
                        	<input class="form-control" id="applicantMobile" maxlength="10" name="MOBILE_NO" placeholder="Phone" type="text" value="" required>
                        </div>
                        
            </div>
            </div>
            <div>
                        <hr>
                      </div>
            
            </div>
            <div class="alert alert-info">
     			<label class="text-left font-weight-400">
      			<font style="vertical-align: inherit;">
      			<font style="vertical-align: inherit;">
      			 Current address &nbsp;
    			</font>
    			</font>
    			</label>
    		</div>
            <div class="row">
           		 <div class="form-group col-md-12 col-sm-12">
                          <div class="col-md-2">
                            <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                              House No
                             </font></font></label> <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                          </div>
                          <div class="col-md-5">
                            <input class="form-control"  maxlength="25" name="Houseno" placeholder="House no" type="text" value="" required>
                           <!-- <span class="field-validation-valid" data-valmsg-for="Houseno" data-valmsg-replace="true"></span>--> 
                          </div>
           		 </div>
           		 <div class="form-group col-md-12 col-sm-12">
                          <div class="col-md-2">
                            <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                              Area/ Location
                             </font></font></label> <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                          </div>
                          <div class="col-md-5">
                            <input class="form-control"  maxlength="30" name="Area" placeholder="Area/Location" type="text" value="" required>
                           <!-- <span class="field-validation-valid" data-valmsg-for="Area" data-valmsg-replace="true"></span>-->
                          </div>
           		 </div>
           		 <div class="form-group col-md-12 col-sm-12">
                          <div class="col-md-2">
                            <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                              Village/ City
                             </font></font></label> <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                          </div>
                          <div class="col-md-5">
                            <input class="form-control"  maxlength="30" name="City" placeholder="Village/City" type="text" value="" required>
                            <!--<span class="field-validation-valid" data-valmsg-for="City" data-valmsg-replace="true"></span>-->
                          </div>
           		 </div>
           		 <div class="form-group col-md-12 col-sm-12">
                          <div class="col-md-2">
                            <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                              Pin Code
                             </font></font></label> <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                          </div>
                          <div class="col-md-5">
                            <input class="form-control"  maxlength="6" name="Pin" placeholder="PinCode" type="text" value="" required>
                           <!-- <span class="field-validation-valid" data-valmsg-for="Pin" data-valmsg-replace="true"></span>-->
                          </div>
           		 </div>
           		 <div class="form-group col-md-12 col-sm-12">
                          <div class="col-md-2">
                            <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                              District
                             </font></font></label> <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                          </div>
                          <div class="col-md-5">
                            <input class="form-control"  maxlength="50" name="District" placeholder="District" type="text" value="" required>
                           <!-- <span class="field-validation-valid" data-valmsg-for="District" data-valmsg-replace="true"></span>-->
                          </div>
           		 </div>
           		 <div class="form-group col-md-12 col-sm-12">
                          <div class="col-md-2">
                            <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                              State/ Union Territory
                             </font></font></label> <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                          </div>
                          <div class="col-md-5">
                            <input class="form-control"  maxlength="50" name="State" placeholder="State/ Union Territory" type="text" value="" required>
                            <!--<span class="field-validation-valid" data-valmsg-for="State" data-valmsg-replace="true"></span>-->
                          </div>
           		 </div>
            </div>
           <!--   <div class="alert alert-info">
     			<label class="text-left font-weight-400">
      			<font style="vertical-align: inherit;">
      			<font style="vertical-align: inherit;">
      			 Permanent address &nbsp;
    			</font>
    			</font>
    			</label>
    		</div>
            <div class="row">
           		 <div class="form-group col-md-12 col-sm-12">
                          <div class="col-md-2">
                            <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                              House No
                             </font></font></label> <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                          </div>
                          <div class="col-md-5">
                            <input class="form-control"  maxlength="25" name="P_Houseno" placeholder="House no" type="text" value="" autocomplete="false">
                            <span class="field-validation-valid" data-valmsg-for="P_Houseno" data-valmsg-replace="true"></span>
                          </div>
           		 </div>
           		 <div class="form-group col-md-12 col-sm-12">
                          <div class="col-md-2">
                            <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                              Area/ Location
                             </font></font></label> <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                          </div>
                          <div class="col-md-5">
                            <input class="form-control"  maxlength="30" name="P_Area" placeholder="Area/Location" type="text" value="" autocomplete="false">
                            <span class="field-validation-valid" data-valmsg-for="P_Area" data-valmsg-replace="true"></span>
                          </div>
           		 </div>
           		 <div class="form-group col-md-12 col-sm-12">
                          <div class="col-md-2">
                            <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                              Village/ City
                             </font></font></label> <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                          </div>
                          <div class="col-md-5">
                            <input class="form-control"  maxlength="30" name="P_City" placeholder="Village/City" type="text" value="" autocomplete="false">
                            <span class="field-validation-valid" data-valmsg-for="P_City" data-valmsg-replace="true"></span>
                          </div>
           		 </div>
           		 <div class="form-group col-md-12 col-sm-12">
                          <div class="col-md-2">
                            <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                              Pin Code
                             </font></font></label> <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                          </div>
                          <div class="col-md-5">
                            <input class="form-control"  maxlength="6" name="P_Pin" placeholder="PinCode" type="number" value="" autocomplete="false">
                            <span class="field-validation-valid" data-valmsg-for="P_Pin" data-valmsg-replace="true"></span>
                          </div>
           		 </div>
           		 <div class="form-group col-md-12 col-sm-12">
                          <div class="col-md-2">
                            <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                              District
                             </font></font></label> <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                          </div>
                          <div class="col-md-5">
                            <input class="form-control"  maxlength="50" name="P_District" placeholder="District" type="text" value="" autocomplete="false">
                            <span class="field-validation-valid" data-valmsg-for="P_District" data-valmsg-replace="true"></span>
                          </div>
           		 </div>
           		 <div class="form-group col-md-12 col-sm-12">
                          <div class="col-md-2">
                            <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                              State/ Union Territory
                             </font></font></label> <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                          </div>
                          <div class="col-md-5">
                            <input class="form-control"  maxlength="50" name="P_State" placeholder="State/ Union Territory" type="text" value="" autocomplete="false">
                            <span class="field-validation-valid" data-valmsg-for="P_State" data-valmsg-replace="true"></span>
                          </div>
           		 </div>
            </div>-->
            
          
                        <div> 
                      		<hr>
            			</div>
    		<div class="col-md-4 col-md-offset-5">
            <button style="width:150px" type="submit" class="btn btn-primary">Submit</button>
            </div>
          </form>
          </div>
        </div>
        </div>
        </div>
        </div>
        
    </body>
</html>