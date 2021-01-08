<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Security Questions</title>
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
        <script>
        
                                       
        
        </script>
        
        <div class="container">
            <div class="row">
            <div class="col-md-12 col-xs-12">
            <div class="panel panel-default">
            <div class="panel-heading clearfix text-center">
            <p class="panel-title heading1">
            <font style="vertical-align: inherit; margin-bottom: 2px;">
            Set security questions!!!
            </font>
            </p>
        </div>
        <div class="panel-body">
                <form action="/DBMS/securityServlet" method="post">
                        <div class="row">
                                <div class="form-group col-md-12 col-sm-12">
                        <div class="alert alert-info">
                                <label class="text-left  font-weight-400">
                                 <font style="vertical-align: inherit;">
                                 <font style="vertical-align: inherit;">
                                SECURITY QUESTION&nbsp;
                               </font>
                               </font>
                               </label></div>
                               </div>
                               </div>
                               <div class="row">
                                    <div class="form-group col-md-12 col-sm-12">
                                            <div class="col-md-2">
                                                    <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                                                      Question1:
                                                     </font></font></label> <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                                                  </div>

                                <div class="col-md-5">
                            <select class="form-control select ignoreValidation input-validation-error" data-val="true" id="select_ques" name="security_ques" aria-describedby="select_security-ques" aria-invalid="true"><option value="S"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Select</font></font></option>
								<option value="B"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">which is your favourite book?</font></font></option>
								<option value="F"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">What is your father name?</font></font></option>
								<option value="P"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Which is your favourite place</font></font></option>
							</select>
                           
                          </div>
                          </div>
                               </div>
                               <div class="row">
                                    <div class="form-group col-md-12 col-sm-12">
                                                  <div class="col-md-2">
                                                    <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                                                      Answer1:
                                                     </font></font></label> <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                                                  </div>
                                                <div class="col-md-4 padding_0">
                                                        <input class="form-control" data-val="true" data-val-regex-pattern="^(?:([a-zA-Z0' ])(?!\1\1\1))+$" maxlength="50" name="ANSWER_1" placeholder="ANSWER to the question1" type="text" value="" autocomplete="false">
                                                  <span class="field-validation-valid" data-valmsg-for="Answer_1" data-valmsg-replace="true"></span>
                                                </div>
                                    </div>
                                    </div>

                                    <div class="row">
                                            <div class="form-group col-md-12 col-sm-12">
                                                    <div class="col-md-2">
                                                            <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                                                              Question2:
                                                             </font></font></label> <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                                                          </div>
        
                                        <div class="col-md-5">
                                    <select class="form-control select ignoreValidation input-validation-error" data-val="true" id="select_ques2" name="security_ques2" aria-describedby="select_security-ques2" aria-invalid="true"><option value="S"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Select</font></font></option>
                                        <option value="S"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">which is your favourite sport?</font></font></option>
                                        <option value="M"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">What is your mother name?</font></font></option>
                                        <option value="MO"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Which is your favourite movie?</font></font></option>
                                    </select>
                                   
                                  </div>
                                  </div>
                                       </div>
        
        
                                       <div class="row">
                                            <div class="form-group col-md-12 col-sm-12">
                                                          <div class="col-md-2">
                                                            <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                                                              Answer2:
                                                             </font></font></label> <span class="star"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></span>
                                                          </div>
                                                        <div class="col-md-4 padding_0">
                                                                <input class="form-control" data-val="true" data-val-regex-pattern="^(?:([a-zA-Z0' ])(?!\1\1\1))+$" maxlength="50" name="ANSWER_2" placeholder="ANSWER to the question2" type="text" value="" autocomplete="false">
                                                          <span class="field-validation-valid" data-valmsg-for="Answer_2" data-valmsg-replace="true"></span>
                                                        </div>
                                            </div>
                                            </div>
                                            <div>
												<p style="color:red">${errormessage}</p>
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