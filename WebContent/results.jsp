<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Results Page</title>
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
    <h4><b>ADMIN</b></h4>
    <div class="w3-section w3-bottombar w3-padding-16">
      </div>
  </div>
  <div class="w3-bar-block">
     <a href="${pageContext.request.contextPath}/admin_next?action=home" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-user fa-fw w3-margin-right"></i>HOME</a> 
    
 <a href="${pageContext.request.contextPath}/admin_next?action=result" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-signout  fa-fw w3-margin-right"></i>Results</a>
    <a href="${pageContext.request.contextPath}/admin_next?action=Signout" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-signout  fa-fw w3-margin-right"></i>Sign Out</a>
  
  </div>
  <div class="w3-panel w3-large">
    
  </div>
</nav>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<div class="w3-main" style="margin-left:300px">

  <!-- Header -->
  <header id="portfolio">
    <a href="#"><img src="/w3images/avatar_g2.jpg" style="width:65px;" class="w3-circle w3-right w3-margin w3-hide-large w3-hover-opacity"></a>
    <span class="w3-button w3-hide-large w3-xxlarge w3-hover-text-grey" onclick="w3_open()"><i class="fa fa-bars"></i></span>
    <div class="w3-container">
    <h1><b>Result Page</b></h1>
    <div class="w3-section w3-bottombar w3-padding-16">
      <span class="w3-margin-right"></span> 
      
    </div>
    </div>
  </header>
  
 <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-8"><h2>Voter <b>Details</b></h2></div>
                </div>
            </div>
            
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Party Name</th>
                        <th>Number Of Votes</th>
                    </tr>
                </thead>
                <tbody>
                						<c:forEach items="${list_res}" var="res">
                									<tr>
					                                     <td>${res.partyname}</td> 
                                                         <td>${res.count}</td>
                                                         </tr>
										</c:forEach>
                </tbody>
            </table>
			<div>
					<p style="font-size:55px;color:green">${winner} party has won!!!</p>
					
					</div>
        </div>
    </div>   

</div>
</body>

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

</html>