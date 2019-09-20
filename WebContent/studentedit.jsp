<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.JavaSolTest.Dto.*,com.JavaSolTest.Dao.*,com.JavaSolTest.Service.*,java.util.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Student Profile</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="profileCSS/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="profileCSS/coin-slider.css" />
<script type="text/javascript" src="profileJS/cufon-yui.js"></script>
<script type="text/javascript"src="profileJS/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="profileJS/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="profileJS/script.js"></script>
<script type="text/javascript" src="profileJS/coin-slider.min.js"></script>
<style>
.button {
  border-radius: 4px;
  background-color: #grey;
  border: none;
  color: #black;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 150px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>

<style type="text/css">

input[type=text], select, textarea {
    width: 25%; /* Full width */
    padding: 12px; /* Some padding */  
    border: 1px solid #ccc; /* Gray border */
    border-radius: 4px; /* Rounded borders */
    box-sizing: border-box; /* Make sure that padding and width stays in place */
    margin-top: 6px; /* Add a top margin */
    margin-bottom: 16px; /* Bottom margin */
    resize: vertical /* Allow the user to vertically resize the textarea (not horizontally) */
}
input[type=email], select, textarea {
    width: 25%; /* Full width */
    padding: 12px; /* Some padding */  
    border: 1px solid #ccc; /* Gray border */
    border-radius: 4px; /* Rounded borders */
    box-sizing: border-box; /* Make sure that padding and width stays in place */
    margin-top: 6px; /* Add a top margin */
    margin-bottom: 16px; /* Bottom margin */
    resize: vertical /* Allow the user to vertically resize the textarea (not horizontally) */
}

input[type=password], select, textarea {
    width: 25%; /* Full width */
    padding: 12px; /* Some padding */  
    border: 1px solid #ccc; /* Gray border */
    border-radius: 4px; /* Rounded borders */
    box-sizing: border-box; /* Make sure that padding and width stays in place */
    margin-top: 6px; /* Add a top margin */
    margin-bottom: 16px; /* Bottom margin */
    resize: vertical /* Allow the user to vertically resize the textarea (not horizontally) */
}
input[type=file], select, textarea {
    width: 25%; /* Full width */
    padding: 12px; /* Some padding */  
    border: 1px solid #ccc; /* Gray border */
    border-radius: 4px; /* Rounded borders */
    box-sizing: border-box; /* Make sure that padding and width stays in place */
    margin-top: 6px; /* Add a top margin */
    margin-bottom: 16px; /* Bottom margin */
    resize: vertical /* Allow the user to vertically resize the textarea (not horizontally) */
}


/* Style the submit button with a specific background color etc */
input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

/* When moving the mouse over the submit button, add a darker green color */
input[type=submit]:hover {
    background-color: #45a049;
}

.container{
 padding: 20px;

}

</style>



<style>
table, td, th {
	border-collapse: collapse;
	width: 35%;
	margin-left: 300px;
	border: 1px solid black;
	padding: 8px;
}

body {
	background-image:
		url("http://andygrimshaw.com/wp-content/uploads/2015/10/White-Blocks-Sphere.jpg");
	background-size: 1800px 1500px;
	background-repeat: no-repeat center center;
	padding: 0;
	-webkit-background-size: cover;
	background-size: cover;
	background-attachment: fixed;
}
</style>
</head>
<body>
	<form action="edit" method="post">
		<div class="main">
			<div class="header">
				<div class="header_resize">
					<div class="logo">

						<h1>
							<a href="studentProfile.jsp">Student<span> Profile</span> <small>Welcome
									 ${stuinfo.getName() }</small></a>
						</h1>
					</div>
					<div class="clr"></div>
					<div class="menu_nav">
						<div class="scrollmenu">
							<ul>

								<li><a href="studentProfile.jsp"><span>ViewProfile</span></a></li>
								<li><a href="studentedit.jsp"><span>Update
											Profile</span></a></li>
								<li><a href="teststart"><span>Available Test</span></a></li>
								<li><a href="scoreCard"><span>Score Card</span></a></li>
								<li><a href="logout"><span>Logout</span></a></li>

							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
<center>

		
				<input type="hidden" name="id" value="${stuinfo.getId() }"></input>

				<input type="text" name="name"
					value="${stuinfo.getName() }"></input><br />

				<input type="text" name="lname"
					value="${stuinfo.getLname() }"></input><br />

				<input type="text" name="mobno"
					value="${stuinfo.getMobno() }"></input><br />

				<input type="text" name="email"
					value="${stuinfo.getEmail() }"></input><br />

				<input type="text" name="pass"
					value="${stuinfo.getPass() }"></input><br />

			<input type="hidden" name="state" value="${stuinfo.getState()}"></input>

			<input type="hidden" name="city" value="${stuinfo.getCity()}"></input>

			<input type="hidden" name="image" value="${stuinfo.getPath()}"></input>

		<button class="button"><span>Update</span></button>
				 <input type="hidden" value="Update"/> 
		</center>
		<br /><br /><br /><br /><br /><br /><br /><br />
		<div class="clr"></div>
		<div class="footer">
			<div class="footer_resize">
				<p class="lf">
					&copy; Copyright <a href="#">ONLINE TEST</a>.
				</p>
				<p class="rf">
					Design by JAVA SOLUTION<a href="http://www.dreamtemplate.com/"></a>
				</p>
				<div style="clear: both;"></div>
			</div>
		</div>
	</form>
</body>
</html>
