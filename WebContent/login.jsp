<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="BusinessLogic.*" %>
<%@page import="interfc.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="javax.script.*"%>
<%@page import="java.io.IOException"%>

<%-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:useBean id="userdetails" scope="session" class = "BusinessLogic.Person" /> 
<jsp:useBean id="person" scope="session" class="BusinessLogic.Main" />  --%> 

<html>
  
  <head>
  
    <title>Log In</title>
    <meta name="viewport" content="width=device-width">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
	<script type="text/javascript" src="js/jquery.validate.js"></script>
	<script type="text/javascript">
	
	$(document).ready(function(){
		jQuery.validator.setDefaults({
	// where to display the error relative to the element
		errorPlacement: function(error, element) {
		error.appendTo(element.parent().find('p.form-control'));
	 }
	});
	
			$("#form-signin").validate({
					rules:{
						email:{
							required : true,
							email: true
						},
						
						password:{
							required: true
						},		
					}
			});
		});
	</script>
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
    <style type="text/css">
      body {
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #eee;
      }
      .form-signin {
        max-width: 330px;
        padding: 15px;
        margin: 0 auto;
      }
      .form-signin .form-signin-heading, .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin .checkbox {
        font-weight: normal;
      }
      .form-signin .form-control {
        position: relative;
        font-size: 16px;
        height: auto;
        padding: 10px;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
      }
      .form-signin .form-control:focus {
        z-index: 2;
      }
      .form-signin input[type="text"] {
        margin-bottom: -1px;
        border-bottom-left-radius: 0;
        border-bottom-right-radius: 0;
      }
      .form-signin input[type="password"] {
        margin-bottom: 10px;
        border-top-left-radius: 0;
        border-top-right-radius: 0;
      }
		.my_errors {
			color:red;
		}
</style>   
</head>
  
<body>
  <%session.invalidate(); %>
    <div class="container">
      <div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Skimpy</a>
          </div>
          <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav"></ul>
          </div>
          <!-- /.nav-collapse -->
        </div>
        <!-- /.container -->
      </div>
    </div>
    <div class="container">
  

     <form  class="form-signin" action="logindets.jsp" method="post">
        <h2 class="form-signin-heading">Please log in</h2>
        <input type="text" name = "email" class="form-control" placeholder="Email address"><p class="my_errors"></p>
        <input type="password" name = "password" class="form-control" placeholder="Password"><p class="my_errors"></p>
        <label class="checkbox">
          <input type="checkbox" value="remember-me">Remember me</label>
        <button class="btn btn-lg btn-primary btn-block" type="submit" value ="Log In">Sign in</button>
      </form>
    </div>
    <!-- /container -->
  </body>

</html>
