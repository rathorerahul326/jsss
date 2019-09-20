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
<style>
body {
	color: black;
	background-image:
		url("http://andygrimshaw.com/wp-content/uploads/2015/10/White-Blocks-Sphere.jpg");
	background-size: 1800px 1500px;
	background-repeat: no-repeat center center;
	padding: 0;
	-webkit-background-size: cover;
	background-size: cover;
	background-attachment: fixed;
}
tr{
margin: 12px;
padding: 0;
}
tr td{
margin: 0 0 12px 0;
font-size: .9em;
line-height: 1em;
}

body:nth-of-type(1) tr td{
list-style-type:none;
padding: 0 0 0 45px;
position:relative;
}

body:nth-of-type(1) tr td:before{
/*fill it with a blank space*/
content:"\00a0";
 
/*make it a block element*/
display: block;
 
/*adding an 8px round border to a 0x0 element creates an 8px circle*/
border: solid 9px #00CD00;
border-radius: 9px;
-moz-border-radius: 9px;
-webkit-border-radius: 9px;
height: 0;
width: 0;
 
/*Now position it on the left of the list item, and center it vertically
(so that it will work with multiple line list-items)*/
position: absolute;
left: 7px;
top: 40%;
margin-top: -8px;
}

body:nth-of-type(1) tr td:after{
/*Add another block-level blank space*/
content:"\00a0";
display:block;
 
/*Make it a small rectangle so the border will create an L-shape*/
width: 3px;
height: 6px;
 
/*Add a white border on the bottom and left, creating that 'L' */
border: solid #fff;
border-width: 0 2px 2px 0;
 
/*Position it on top of the circle*/
position:absolute;
left: 14px;
top: 40%;
margin-top: -4px;
 
/*Rotate the L 45 degrees to turn it into a checkmark*/
-webkit-transform: rotate(45deg);
-moz-transform: rotate(45deg);
-o-transform: rotate(45deg);
}

#tickcontainer {height:15px;
                width: 15px;
    border: 1px solid black}
.tickbg {content:"\00a0";
         border: solid 8px #00CD00;
         border-radius: 9px;
         -moz-border-radius: 9px;
         -webkit-border-radius: 9px;
         height: 0;
         width: 0;
         display: block;}
         
    
.tick {height: 6px;
       width: 3px;
       border: solid #FFFFFF;
       border-width: 0px 2px 2px 0px;
       -webkit-transform: rotate(45deg);
       -moz-transform: rotate(45deg);
       -o-transform: rotate(45deg);
       display: block;
        margin-top: -5px;
        margin-left: -2px;}

</style>

</head>
<body>
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


	<!-- available Test here  -->



	<center>
		<h2>Answer Key</h2>
		
</div>
	</center>

	<table>
		<c:forEach items="${answerlist}" var="ans">
			<tr>
				<td>
					<h3>Ques. ${ans.getQuestion()}</h3>

					<h5>(A). ${ans.getA()}</h5>
					<h5>(B). ${ans.getB()}</h5>
					<h5>(C). ${ans.getC()}</h5>
					<h5>(D). ${ans.getD()}</h5>

					<h3>Your Answer: ${ans.getFetchAns()}</h3>
					<h3>Correct Answer: ${ans.getCorrectAns()}</h3>
				</td>
			</tr>
		</c:forEach>
	</table>

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