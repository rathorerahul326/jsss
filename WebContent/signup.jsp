 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core"  prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<h5><a href="home.jsp"><img border="0" alt="Home" src="http://laoblogger.com/images/clip-art-home-10.jpg" width="35" height="35"></a> <br></h5>
<html>
<head>
<meta charset="ISO-8859-1">
<title>signup page</title>


<script  src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

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
    width: 50%; /* Full width */
    padding: 12px; /* Some padding */  
    border: 1px solid #ccc; /* Gray border */
    border-radius: 4px; /* Rounded borders */
    box-sizing: border-box; /* Make sure that padding and width stays in place */
    margin-top: 6px; /* Add a top margin */
    margin-bottom: 16px; /* Bottom margin */
    resize: vertical /* Allow the user to vertically resize the textarea (not horizontally) */
}
input[type=email], select, textarea {
    width: 50%; /* Full width */
    padding: 12px; /* Some padding */  
    border: 1px solid #ccc; /* Gray border */
    border-radius: 4px; /* Rounded borders */
    box-sizing: border-box; /* Make sure that padding and width stays in place */
    margin-top: 6px; /* Add a top margin */
    margin-bottom: 16px; /* Bottom margin */
    resize: vertical /* Allow the user to vertically resize the textarea (not horizontally) */
}

input[type=password], select, textarea {
    width: 50%; /* Full width */
    padding: 12px; /* Some padding */  
    border: 1px solid #ccc; /* Gray border */
    border-radius: 4px; /* Rounded borders */
    box-sizing: border-box; /* Make sure that padding and width stays in place */
    margin-top: 6px; /* Add a top margin */
    margin-bottom: 16px; /* Bottom margin */
    resize: vertical /* Allow the user to vertically resize the textarea (not horizontally) */
}
input[type=file], select, textarea {
    width: 50%; /* Full width */
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



<script type="text/javascript">
	function f1() {
		//alert("Html Script function call");
		$("#spnm").html("");
		var name = $('#nm').val();
		if (!name.match(/^[a-zA-Z]+$/)) {
			$("#spnm").html("Invalid Alphabate");
			spnm.style.color = "red";
		}
		}
	function f11() {
		//alert("Html Script function call");
		$("#lspnm").html("");
		var name = $('#lnm').val();
		if (!name.match(/^[a-zA-Z]+$/)) {
			$("#lspnm").html("*Invalid Alphabate");
			lspnm.style.color = "red";
		}
		}
</script>
<script type="text/javascript">
	function f2() {
		//alert("Html Script function call");
		$("#spmn").html("");
		var mno =$('#mn').val();
	 if (!mno.match(/^\d{10}$/)) {
			$("#spmn").html("*Invalid");
			spmn.style.color = "red";
		}
	}
</script>
<script type="text/javascript">
 function validateForm() {
	//window.alert("function call");
	$("#sp").html("");
    var email = $('#eml').val();
        $.ajax({
            url:"emailValidation",
            async: false,
            data:{                  
                email:email
            },
            type:"POST",           
            dataType:"text",       
            success:function(data)
            
            {
                     $("#sp").html(data);
                     sp.style.color = "red";
              
            }
        });
      
    } 
    

</script>
<script type="text/javascript">
 function validuid() {
	 
	 $("#sp1").html("");
    var user = $('#uid').val();
        $.ajax({
            url:"userid",
            async: false,
            data:{                  
                user:user
            },
            type:"POST",            
            dataType:"text",        
            success:function(data)
            {    
                 $("#sp1").html(data);
                 sp1.style.color = "red";
                 
            }
        });
      
    } 
    

</script>
<script>
function myFunction() {
	
	$("#ct").find("option").remove();
    var state = $('#st').val();
        $.ajax({
            url:"userstate1",
            async: false,
            data:{                  
                	state:state
            },
            type:"POST",            
            dataType:"json",        
            success:function(data)
            {    
            	//alert(data);
            		var html='<option value="" disabled selected hidden>select</option>';
            	
            	$.each(data, function(i,item) {
            		html+='<option value='+item.a+'>'+item.a+'</option>';
            		html+='<option value='+item.b+'>'+item.b+'</option>';
            		html+='<option value='+item.c+'>'+item.c+'</option>';
            		html+='<option value='+item.d+'>'+item.d+'</option>';
            	});
            	$('#ct').append(html);
            }
        });
    
}
</script>
<script type="text/javascript"> 
 
$(document).ready(function(){

	 $("#eml").blur(function() {
		 validateForm();
	
	});
	
	 $("#uid").blur(function() {
		 validuid();
	});
	 
});
</script>
<style>
div { margin: 30px 80px 100px 100px;}

p { margin: 10px 90px 90px 170px;}
body {
background-image: url("http://andygrimshaw.com/wp-content/uploads/2015/10/White-Blocks-Sphere.jpg") ;
	 background-size: 1800px 1500px;
    background-repeat: no-repeat center center;
    
    padding: 0;
    -webkit-background-size: cover;
    background-size: cover;
    background-attachment: fixed;
}
input:focus {
    background-color: white;
}
</style>
</head>
<body >
<form action="signup"  method="Post" enctype="multipart/form-data" >



<i>
<div>

<h3>${errormsg}${errormsg1}</h3>


<div class="container">
<h1><b>Student Registration</b></h1>

<input type="text" name= "name" id="nm"onchange="f1()" placeholder="First Name"required><span id="spnm"></span><br>

<input type="text" name= "lname" id="lnm"onchange="f11()"placeholder="Last Name"required><span id="lspnm"></span><br>

<input type="email" name="email"id="eml"onchange="validateForm()"placeholder=" Email Address" required><span id="sp"></span><br>

<input type="text" name="mobno" id="mn"onchange="f2()"placeholder="Mobile Number"required><span id="spmn"></span><br>

<input type="text" name="id" id="uid"onchange="validuid()"placeholder=" User Name"required><span id="sp1"></span><br>

<input type="password" name="pass"placeholder=" Password"required><br>


<select name="state" id="st" onchange="myFunction()"required><br>
<option >State</option>
  <option value="MadhyaPradesh">MP</option>
  <option value="UttarPradesh">UP</option>
  <option value="Chattishgarh">CG</option>
</select><br>

<select name="city" id="ct">
 <option >City</option>
</select><br>

<input type="file" name="photo" placeholder="Upload Image.."required><br>
<button class="button"><span>Register</span></button>
<p><input type="hidden" value="Register"><br></p>


</div>
</div>
</i>

</form>
</body>
</html>