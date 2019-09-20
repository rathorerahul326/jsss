  
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="com.JavaSolTest.Dto.*,com.JavaSolTest.Dao.*,com.JavaSolTest.Service.*,java.util.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Student Profile</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="profileCSS/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="profileCSS/coin-slider.css" />
<script type="text/javascript" src="profileJS/cufon-yui.js"></script>
<script type="text/javascript" src="profileJS/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="profileJS/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="profileJS/script.js"></script>
<script type="text/javascript" src="profileJS/coin-slider.min.js"></script>
<style >

table, td, th {
	border-collapse: collapse;
	width: 60%;
    margin-left:50px;
    border: 1px solid black;
    padding: 10px;
    
}



body {


color:black;
background-image: url("http://andygrimshaw.com/wp-content/uploads/2015/10/White-Blocks-Sphere.jpg") ;
	 background-size: 1800px 1500px;
    background-repeat: no-repeat center center;
    
    padding: 0;
    -webkit-background-size: cover;
    background-size: cover;
    background-attachment: fixed;
}</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
       <div class="logo">
       
        <h1><a href="studentProfile.jsp">Student<span> Profile</span> <small>Welcome  ${stuinfo.getName() }</small></a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
      <div class="scrollmenu">
        <ul>
        <!-- 
          <li><a href="studentProfile.jsp"><span>ViewProfile</span></a></li>
           <li><a href="studentedit.jsp"><span>Update Profile</span></a></li>
           <li><a href="teststart"><span>Available Test</span></a></li> -->
           <li><a> <span id="myBtn">View Result</span></a></li>
           <li><a href="logout"><span>Logout</span></a></li>
          
          
        </ul>
      </div>
    </div>
    </div>
    </br>
<br />
<br />
</br>

   <center>  
 
  

</script>
   
   <style>
/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
    position: relative;
    background-color: #fefefe;
    margin: auto;
    padding: 0;
    border: 1px solid #888;
    width: 50%;
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
    -webkit-animation-name: animatetop;
    -webkit-animation-duration: 0.4s;
    animation-name: animatetop;
    animation-duration: 0.4s
}

/* Add Animation */
@-webkit-keyframes animatetop {
    from {top:-300px; opacity:0} 
    to {top:0; opacity:1}
}

@keyframes animatetop {
    from {top:-300px; opacity:0}
    to {top:0; opacity:1}
}

/* The Close Button */
.close {
    color: white;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}

.modal-header {
    padding: 2px 16px;
    background-color: #c4c4c4;
    color: white;
}

.modal-body {padding: 2px 16px;}

.modal-footer {
    padding: 2px 16px;
    background-color: #c4c4c4;
    color: white;
}
</style>
</head>
<body onload="myf()">

<h2><i>For Score click on View Result</i></h2> 

<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="close">&times;</span>
      <h1><b><i>Your Score ${score}/${totalmarks}</i></b></h1>
    </div>
    <div class="modal-body">
      <table>
      
    	<h1> <b><tr><td>Total Question </td><td> ${noq}</td></tr>
    	  <tr><td> Correct Answer</td><td> ${correctAnswer}</td> </tr>
    	 <tr><td> Wrong Answer</td><td> ${wrong}</td> </tr>
    	  <tr><td> Not Answered</td><td> ${skip}</td> </tr>
    	</h1>
  	     
     
      </table>
      
      
      
      
    </div>
    <div class="modal-footer">
      <h3></h3>
    </div>
  </div>

</div>
<script type="text/javascript"> 
 
$(document).ready(function(){

	
	 
}); 
</script>
<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
function myf(){
	
	 modal.style.display = "block";
	
	
}

btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
   
   
   
  </center>

<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />

<div class="clr"></div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&copy; Copyright <a href="#">ONLINE TEST</a>.</p>
      <p class="rf">Design by JAVA SOLUTION<a href="http://www.dreamtemplate.com/"></a></p>
      <div style="clear:both;"></div>
    </div>
  </div>

</body>
</html>