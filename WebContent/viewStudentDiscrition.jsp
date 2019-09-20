

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
			    pageEncoding="ISO-8859-1"%>
			     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
			<html>
			<head>
			<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<style type="text/css">
	
	table, td, th {
	border-collapse: collapse;
	width: auto;
	margin-left: 50px;
	border: 1px solid black;
	padding: 8px;
}
	
	</style>
	
	
			</head>
			<body>
			<%@include file="header.jsp" %>
			<div class="w3-container">
			  
			  <div class="w3-card-4">
			    <div class="w3-container w3-green">
			      <h2>Student Records</h2>
			    </div>

			<form action="" style="margin: 4%">
			
      	<center>
      					<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="close">&times;</span>
    </div>
    <div class="modal-body">
      
    	<table>
		
		
		<tr>
			
			<td><span> Test Name</span></td>
			<td><span> User Name</span></td>
			<td><span> Score Marks</span></td>
			<td><span> Total Test Marks</span></td>
			<td><span> Date</span></td>
			
		</tr>

		<c:forEach items="${allstudentRecords}" var="testDetails">
			<tr>
				<td><span> ${testDetails.getTest_name()}</span></td>
				<td><span> ${testDetails.getUid() }</span></td>
				<td><span> ${testDetails.getScore() }</span></td>
				<td><span> ${testDetails.getTotalmarks()}</span></td>
				<td><span> ${testDetails.getDate() }</span></td>
			</tr>

		</c:forEach>
	</table>
	</center>
	   
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
      
					
						




			</form>
			</div>
			</div>

			</body>
			</html>
	
	   
   
					
					