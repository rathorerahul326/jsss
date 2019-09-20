<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*,com.JavaSolTest.Dto.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">


table, td, tr {
	border-collapse: collapse;
	width: auto;
	border: 1px solid grey;
	padding: 8px;
}
a { color: inherit; } 


</style>
</head>
<body>


	<center><h3>Question Status</h3>
	

	<table>
	

		

  <%
  List<TestQuestionDto> listquestion=(List<TestQuestionDto>)session.getAttribute("question");

  int noq=(Integer)session.getAttribute("noq");
  if(noq%10!=0)
	  noq=noq+1;
  
  
  int in=(Integer)session.getAttribute("index");
  
  for(int i = 1; i <=noq/10; i++) {%>
	  
	  <tr >
	 <%  for(int j=0;j<10;j++)
	  {
	  %>
              
           <%  String s=listquestion.get((((i*10)-9)+j)-1).getFetchAns();

           if(s==null)
            {
            	%>
               
               <td><a href="indexQuestion?index=<%= (((i*10)-9)+j)-1 %>"style="text-decoration:none"><%= ((i*10)-9)+j %></a></td>
               <%}
            
            else if(s.equals("E")){%>
               <td bgcolor="#F7F772"><a href="indexQuestion?index=<%= (((i*10)-9)+j)-1 %>"style="text-decoration:none"><%= ((i*10)-9)+j %></a></td>
               <%}
             
             else{
             %>
             <td bgcolor="#5BFF88"><a href="indexQuestion?index=<%= (((i*10)-9)+j)-1 %>"style="text-decoration:none"><%= ((i*10)-9)+j %></a></td>
               
            
        <%}}%>
        </tr>
         <% } %>

	</table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h3>*<span style="color:#5BFF88">Answered</span>  *<span style="color:#F7F772">Not Answered</span></h3>	

</center>














</body>
</html>