<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Candidate Registration</title>
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
                Candidate Registration Form
    </font>
    </p>
    </div>
    <div class="panel-body">
    <div class="alert alert-secondary" role="alert">
		 <label class="fontsize_18 text-danger"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                Note: Fields marked with an asterisk (*) are mandatory
              </font></font></label>
     </div>
        <form action="/DBMS/CandidateServlet" method="post">
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
                            <input class="form-control" id="calculated_age" name="applicant_age" type="date" required>
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
      			 Candidate address &nbsp;
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
            <div>
                    <hr>
                  </div>
            <div class="alert alert-info">
     			<label class="text-left font-weight-400">
      			<font style="vertical-align: inherit;">
      			<font style="vertical-align: inherit;">
      			 Participating constituency &nbsp;
    			</font>
    			</font>
    			</label>
            </div>
            
            <div class="row">
           		 <div class="form-group col-md-12 col-sm-12">
                                <div class="col-md-2">
                                  <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                                    State
                                   </font></font></label> <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                                </div>
                                <div class="col-xs-6" id=drop>
                                  <select class="form-control select ignoreValidation input-validation-error" data-val="true" id="elector_state" name="elector_state" aria-describedby="elector_state-error" aria-invalid="true"><option value="S"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Select</font></font></option>
                                      <option value="Karnataka"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Karnataka</font></font></option>
                                      <option value="Andhra Pradesh"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Andhra Pradesh</font></font></option>
                                      
                                  </select>
                                  <span class="field-validation-error" data-valmsg-for="elector_state" data-valmsg-replace="true"><span id="elector_state-error" class=""><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Please select State</font></font></span></span>
                                </div>
                          </div>
                          <div class="form-group col-md-12 col-sm-12"> 
                          <div class="col-md-2">
                            <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                              Vidhan sabha District
                             </font></font></label> <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                          </div>
                          <div class="col-xs-6" id=drop>
                            <select class="form-control select ignoreValidation input-validation-error" data-val="true" id="elector_district" name="elector_district" aria-describedby="elector_district-error" aria-invalid="true"><option value="S"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Select</font></font></option>
								<option value="Benagaluru"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Benagaluru</font></font></option>
								<option value="Mysore"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Mysore</font></font></option>
                                <option value="ananthpuram"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">ananthpuram</font></font></option>
								<option value="vijaywada"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">vijaywada</font></font></option>
								<option value="vizag"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">vizag</font></font></option>
							</select>
                            </div>
                    </div>
                    <div class="form-group col-md-12 col-sm-12">
                        <div class="col-md-2">
                          <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                            Pin Code
                           </font></font></label> <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                        </div>
                        <div class="col-md-5">
                          <input class="form-control"  maxlength="6" name="P_Pin" placeholder="PinCode" type="text" value="" required>
                          <span class="field-validation-valid" data-valmsg-for="P_Pin" data-valmsg-replace="true"></span>
                        </div>
                  </div>	 
            </div>
            <div>
                    <hr>
                  </div>
            <div class="alert alert-info">
     			<label class="text-left font-weight-400">
      			<font style="vertical-align: inherit;">
      			<font style="vertical-align: inherit;">
      			 Party Details &nbsp;
    			</font>
    			</font>
    			</label>
            </div>
            
            <div class="row">
           		 <div class="form-group col-md-12 col-sm-12">
                                <div class="col-md-2">
                                  <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                                    Party Name
                                   </font></font></label> <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                                </div>
                                <div class="col-md-5">
                                        <input class="form-control"  maxlength="20" name="P_Pname" placeholder="Name" type="text" value="" required>
                                        <span class="field-validation-valid" data-valmsg-for="P_Pname" data-valmsg-replace="true"></span>
                                      </div>
                          </div>
                         
                 
            </div>
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