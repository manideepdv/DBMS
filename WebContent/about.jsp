<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>About Page</title>
<meta charset="UTF-8">
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
</style>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css" >
<link rel="stylesheet" href="css/bootstrap.css" >
<script src="js/jquery-3.4.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/voting.css"/>

</head>
<body class="w3-light-grey w3-content" style="max-width:1600px">
<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
  <div class="w3-container">
    <a href="#" onclick="w3_close()" class="w3-hide-large w3-right w3-jumbo w3-padding w3-hover-grey" title="close menu">
      <i class="fa fa-remove"></i>
    </a>
        <img src="img/election_commision.png" style="width:45%;" class="w3-round"><br><br>
    <h4><b>${username}</b></h4>
  </div>
  <div class="w3-bar-block">
    <a href="${pageContext.request.contextPath}/page3?action=VotingPage&UID=${UID}" onclick="w3_close()" class="w3-bar-item w3-button w3-padding w3-text-teal"><i class="fa fa-th-large fa-fw w3-margin-right"></i>Voting Page</a> 
    <a href="${pageContext.request.contextPath}/page3?action=About&UID=${UID}" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-user fa-fw w3-margin-right"></i>ABOUT</a> 
    <a href="${pageContext.request.contextPath}/page3?action=Contact&UID=${UID}" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-envelope fa-fw w3-margin-right"></i>CONTACT</a>
    <a href="${pageContext.request.contextPath}/page3?action=Signout&UID=${UID}" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-signout  fa-fw w3-margin-right"></i>Sign Out</a>
  </div>
 <!--<div class="w3-panel w3-large">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>  --> 
</nav>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>
<div class="w3-main" style="margin-left:300px">
<header id="portfolio">
    <a href="#"><img src="/w3images/avatar_g2.jpg" style="width:65px;" class="w3-circle w3-right w3-margin w3-hide-large w3-hover-opacity"></a>
    <span class="w3-button w3-hide-large w3-xxlarge w3-hover-text-grey" onclick="w3_open()"><i class="fa fa-bars"></i></span>
    <div class="w3-container">
    <h1><b>Personal Details of ${username}</b></h1>
    <div class="w3-section w3-bottombar w3-padding-16">
      <span class="w3-margin-right"></span> 
      
    </div>
    </div>
  </header>
  
  <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-8"><h2>Personal <b>Details</b></h2></div>
                </div>
            </div>
            
            
              
              
                
            <table class="table table-bordered">
               
                
                <c:forEach items="${list_det}" var="det"> 
                
                <tbody>
                <tr>
                        <td>UID</td>
                        <td>${det.uid}</td>
                       
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td>${det.firstname} ${det.lastname}</td>
                        
                    </tr>
                    
                    <tr>
                        <td>Date of Birth</td>
                        <td>${det.dob}</td>
                        
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td>${det.gender}</td>
                        
                    </tr>
                    <tr>
                        <td>Mail</td>
                        <td>${det.mail}</td>
                        
                    </tr> 
                    <tr>
                        <td>Phone</td>
                        <td>${det.phone}</td>
                        
                    </tr>
                    
                       
                </tbody>
                </c:forEach>
            </table>
        </div>
    </div>   
</div>

<script>
// Script to open and close sidebar
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}
</script>
</body>
</html>