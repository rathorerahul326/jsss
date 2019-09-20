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
<script type="text/javascript"
	src="profileJS/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="profileJS/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="profileJS/script.js"></script>
<script type="text/javascript" src="profileJS/coin-slider.min.js"></script>

<style type="text/css">
input[type=text], select, textarea {
	width: 25%; /* Full width */
	padding: 12px; /* Some padding */
	border: 1px solid #ccc; /* Gray border */
	border-radius: 4px; /* Rounded borders */
	box-sizing: border-box;
	/* Make sure that padding and width stays in place */
	margin-top: 6px; /* Add a top margin */
	margin-bottom: 16px; /* Bottom margin */
	resize: vertical
		/* Allow the user to vertically resize the textarea (not horizontally) */
}

input[type=email], select, textarea {
	width: 25%; /* Full width */
	padding: 12px; /* Some padding */
	border: 1px solid #ccc; /* Gray border */
	border-radius: 4px; /* Rounded borders */
	box-sizing: border-box;
	/* Make sure that padding and width stays in place */
	margin-top: 6px; /* Add a top margin */
	margin-bottom: 16px; /* Bottom margin */
	resize: vertical
		/* Allow the user to vertically resize the textarea (not horizontally) */
}

input[type=password], select, textarea {
	width: 25%; /* Full width */
	padding: 12px; /* Some padding */
	border: 1px solid #ccc; /* Gray border */
	border-radius: 4px; /* Rounded borders */
	box-sizing: border-box;
	/* Make sure that padding and width stays in place */
	margin-top: 6px; /* Add a top margin */
	margin-bottom: 16px; /* Bottom margin */
	resize: vertical
		/* Allow the user to vertically resize the textarea (not horizontally) */
}

input[type=file], select, textarea {
	width: 25%; /* Full width */
	padding: 12px; /* Some padding */
	border: 1px solid #ccc; /* Gray border */
	border-radius: 4px; /* Rounded borders */
	box-sizing: border-box;
	/* Make sure that padding and width stays in place */
	margin-top: 6px; /* Add a top margin */
	margin-bottom: 16px; /* Bottom margin */
	resize: vertical
		/* Allow the user to vertically resize the textarea (not horizontally) */
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

.container {
	padding: 20px;
}

table, td, th {
	border-collapse: collapse;
	width: auto%;
	margin-left: 200px;
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

	<div class="main">
		<div class="header">
			<div class="header_resize">
				<div class="logo">

					<h1>
						<a href="studentProfile.jsp">Student<span> Profile</span> <small>Welcome ${stuinfo.getName() }</small></a>
					</h1>
				</div>
				<span><img border="0" src="${stuinfo.getPath()}"width="70"height="70"></img></span>
				<div class="clr"></div>
				<div class="menu_nav">
					<div class="scrollmenu">
						<ul>
							<li><a href="studentProfile.jsp"><span>ViewProfile</span></a></li>
							<li><a href="studentedit.jsp"><span>UpdateProfile</span></a></li>
							<li><a href="teststart"><span>Available Test</span></a></li>
							<li><a href="scoreCard"><span>Score Card</span></a></li>
							<li><a href="logout"><span>Logout</span></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

	</div>
	 <c:if test="${resume==1}"><center><h2>Complete your Pending Test <input type="button" value="Resume"></input> </h2> </center>  </c:if> 
	
		
		<h3>
		<table>
		<tr> <td>First Name</td><td>${stuinfo.getName()} </td></tr>
		<tr> <td>Last Name</td><td>${stuinfo.getLname()}</td></tr>
		<tr> <td>Mobile Number</td><td>${stuinfo.getMobno()}</td></tr>
		<tr> <td>Email Id</td><td>${stuinfo.getEmail()}</td></tr>
		<tr> <td> State</td><td>${stuinfo.getState()}</td></tr>
		<tr> <td>City</td><td>${stuinfo.getCity()}</td></tr>
		<tr> <td>UserId</td><td>${stuinfo.getId() }</td></tr>
		<tr> <td>Password</td><td>${stuinfo.getPass() }</td></tr>
		</table>
		</h3>

	</br>
	</br>
	</br>
	</br>
	</br>
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

</body>
</html>
