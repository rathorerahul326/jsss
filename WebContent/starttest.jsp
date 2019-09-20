<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.JavaSolTest.Dto.*,com.JavaSolTest.Dao.*,com.JavaSolTest.Service.*,java.util.*,com.JavaSolTest.Dto.*"%>
<%@ page isELIgnored="false"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
&nbsp;&nbsp;<input type="button" onClick="quit()" value="SubmitTest"></input>

<center>
	<h1>
		<b>JavaSolutions Online Test</b>
	</h1>
</center>


<title>Test Window</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge"></meta>
</meta>

<script language="javascript">
	function setTimeForSubmit() {
		examTimer();
		window.setTimeout("submitForm()", '${submitTime}');//Expire time
	}
	
	function submitForm() {
		document.forma.submit();
	}

	var tim;
	var min = '${testtime}';
	var sec = '${testtimesecond}'

	function customSubmit(someValue) {
		document.forma.minute.value = min;
		document.forma.second.value = sec;
		document.forma.submit();
	}

	function examTimer() {
		if (parseInt(sec) > 0) {

			document.getElementById("showtime").innerHTML = "Time Left : "
					+ min + ":" + sec;
			sec = parseInt(sec) - 1;
			tim = setTimeout("examTimer()", 1000);
		} else {

			if (parseInt(min) == 0 && parseInt(sec) == 0) {
				document.getElementById("showtime").innerHTML = "Time Left  : "
						+ min + ":" + sec;
				document.forma.minute.value = 0;
				document.forma.second.value = 0;
				document.forma.submit();

			}

			if (parseInt(sec) == 0) {
				document.getElementById("showtime").innerHTML = "Time Left  : "
						+ min + ":" + sec;
				min = parseInt(min) - 1;
				sec = 59;
				tim = setTimeout("examTimer()", 1000);
			}

		}

		if (parseInt(min) == 10 && parseInt(sec) == 00) {
			document.getElementById("showtime").innerHTML = "Time Left :"
					+ min + ":" + sec;
			alert(" Hurry Up only 10 Minit Left ");

		}

		if (parseInt(min) == 0 && parseInt(sec) == 0) {
			document.getElementById("showtime").innerHTML = "Time Left  :"
					+ min + ":" + sec;
			document.forma.minute.value = 0;
			document.forma.second.value = 0;
			//submitForm(); 
			document.forma.submit();

		}

	}

	function quit() {

		document.forma.minute.value = 0;
		document.forma.second.value = 0;
		//submitForm(); 
		document.forma.submit();

	}
</script>

<style>

input[type=submit] {
	background-color: #808080;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}
input[type=button] {
	background-color: #808080;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

/* When moving the mouse over the submit button, add a darker green color */
input[type=submit]:hover {
	background-color: #808080;
}



.logoimg {
	margin-top: 13px;
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

<script>
	function uncheck() {
		document.getElementById("A").checked = false;
		document.getElementById("B").checked = false;
		document.getElementById("C").checked = false;
		document.getElementById("D").checked = false;
	}
	function fCheck() {

		//alert("Fcheck call");

		if (document.getElementById("A").checked == false
				&& document.getElementById("B").checked == false
				&& document.getElementById("C").checked == false
				&& document.getElementById("D").checked == false) {
			alert(" Select one Answer for saveNext");
		} else {

			document.forma.submit();
		}

	}
	
	

	
</script>
<style>
div {
	margin: 20px 30px 30px 30px;
}
</style>





</head>
<body onload="setTimeForSubmit();">

	<div name="main-div" style="width: 100%;">
		<div style="float: left; width: 50%; ">

			<form action="next" method="post" name="forma">
			<br>



				


				<div>
				
				
				
		<h3><div id="showtime" style="position: absolute; top: 20px"></div></h3>		
				
					<%
						int index = (Integer) session.getAttribute("index");
					%>
					Marks:${question.get(index).marking}:
					<h4>
						Q:${index+1}
						<c:forEach var="local"	items="${question.get(index).fetchQuestion}">

          ${local}<br />
						</c:forEach>
					</h4>
					<%List<TestQuestionDto> ans=(List<TestQuestionDto>)session.getAttribute("question");
					String fetchAns=ans.get(index).getFetchAns();
					String statusA="";
					String statusB="";
					String statusC="";
					String statusD="";
					
					if(fetchAns!=null)
					{
					if(fetchAns.equals("A"))
						statusA="checked";
					
					else if(fetchAns.equals("B"))
						statusB="checked";
					
					else if(fetchAns.equals("C"))
						statusC="checked";
					
					else if(fetchAns.equals("D"))
						statusD="checked";
					}
					%>
					<h4>

						(A).<input type="radio" name="Ans" value="A" id="A" <%=statusA%>></input>${question.get(index).a}<br /> <br /> 
						
						(B).<input type="radio"	name="Ans" value="B" id="B" <%=statusB%>></input> ${question.get(index).b}<br />
						<br />
						
					    (C).<input type="radio" name="Ans" value="C" id="C" <%=statusC%>></input>${question.get(index).c}<br /> <br />
						 
						(D).<input type="radio"	name="Ans" value="D" id="D" <%=statusD%>></input> ${question.get(index).d}<br />
						
						<br /> <input type="hidden" name="Ans" value="E"></input>
						
						 <input type="hidden" name="qid" value="${question.get(index).qid}" /> <input
							type="hidden" name="marks" value="${question.get(index).marking}" />
						<input type="hidden" name="testtime" value="${testtime}"
							id="duration" /> <input type="hidden" name="minute" /> <input
							type="hidden" name="second" />


<br />
<br />
<br />

			<c:if test="${(index+1) < noq}">
			<span>	<input type="button" value="Clear" onClick="uncheck()" /></span>
			
			<c:if test="${(index+1) > 1}">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><input type="submit" name="action" value="Previous" onclick="customSubmit()" /></span>
			</c:if>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>	<input type="submit" name="action" value="Next"	onclick="customSubmit()" /></span>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>	<input type="hidden" name="action" value="SaveNext"	onclick="customSubmit()" /></span>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<span>	<input type="button" name="action" value="SaveNext"	onclick="fCheck()" /></span>
								
			</c:if>
			<c:if test="${(index+1)==noq}">
&nbsp;&nbsp;<span><input type="submit" name="action" value="Previous" onclick="customSubmit()" /></span>
			
			
			<span> <input type="submit" name="action" value="FinishTest" onclick="customSubmit()" /></span>
			</c:if>	

						
					</h4>
				</div>
				</br> </br> </br>
			</form>
		</div>
		<div style="width: 35%; float: left; ">
				 <jsp:include page="questionStatus.jsp" />

		</div>
	</div>
</body>
</html>

