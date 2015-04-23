<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="BusinessLogic.*" %>
<%@page import="interfc.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="javax.script.*"%>
<%@page import="java.io.IOException"%>
<%@include file="home.jsp" %>
<%-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:useBean id="userdetails" scope="session" class = "BusinessLogic.Person" /> 
<jsp:useBean id="person" scope="session" class="BusinessLogic.Main" />  --%> 

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>
<!-- <script type="text/javascript">
$(document).ready(function(){
	jQuery.validator.setDefaults({
// where to display the error relative to the element
	errorPlacement: function(error, element) {
	error.appendTo(element.parent().find('p.myErrors'));
 }
});

		$("#myForm").validate({
				rules:{
					name:{
						required:true
					},
					
					emailaddress:{
						required : true,
						email: true
					},
					
					age:"required",
					
					weight:"required",
						
					height:"required",
					
					exercise:"required",
					
					password:{
						required: true
					},		
				}
		});
	});




</script> -->
    <style type="text/css">
    #row{
    position:relative;
    display:inline;
    
    }
      .form-signup {
        max-width: 640px;
        padding: 0px;
        margin: 0 auto;
        float:left;
      }
      .form-signup .form-control {
        position: relative;
        font-size: 18px;
        height: auto;
        padding: 5px;
        width: 75%
      }
      .form-signup input[type="text"] {
        margin-bottom: 10px;
      }
      .form-signup input[type="password"] {
        margin-bottom: 10px;
      }
      .form-signup input[type="radio"] {
        margin-bottom: 10px;
        display: inline;
        float: left;
      }
      .birthday-drop {
        margin-bottom:10px;
      }
      .birthday-drop .form-control {
        position: relative;
        font-size: 18px;
        display:inline-block;
        height: auto;
        width: auto;
      }

    </style>
<title>Change you profile</title>
<link rel="stylesheet" type="text/css" href="css/search.css" />
<style>
	.myErrors {
	color:red;
	}
</style>

</head>
<body>

<form action="signupdets.jsp" method="post" id="myForm">
 <%-- <%Person user = new Person("Skimpy", "skimpy@skimpy.com", "password", 18, "user.setHeight(Double.parseDouble(request.getParameter(\"height\")))", 70, "M", 0); %> --%>
	<h1> Please enter your details:</h1>
	<br><table>
	<tr> <td> Name:</td><td> <input type="text" name="name" ><p class="MyErrors"></p></td></tr>
	<tr><td>  Email:</td><td> <input type="text" name="emailaddress"><p class="MyErrors"></td></tr>
    <tr><td>  Gender: </td><td> <select name="gender">
                                    <option value="male">Male</option> 
                                    <option value="female">Female</option>
                                </select></td></tr>
                                
	<tr><td> Age: </td><td><input type="number" name="age" min="1" max="100" ><p class="MyErrors"></p></td></tr>
	<tr><td> Weight:</td><td><input type="number" name="weight" step="any"><p class="MyErrors"></p></td></tr>
	<tr> <td>Height: </td> <td><input type="number" name="height" step="any"><p class="MyErrors"></p></td></tr>
	<tr><td> Exercise</td><td> <input type="number" name="exercise" min="1" max="10" ><p class="MyErrors"></p></td></tr>
	<tr><td> Password: </td><td><input type="password" name="password"  ><p class="MyErrors"></p></td></tr>
     </table>
<%if(session.getAttribute("username") == null){
	response.sendRedirect("login.jsp");
}
	 %>
<div class="container">
<form action="profilechanges.jsp" method="post" id="myForm" autocomplete="off">
 <div class="form-signup">
          <div class="controls">
	<h1> Change your details:</h1>
	<br>
    <div class="birthday-drop">Name:<input type="text" class="form-control" name="name" value="<%=session.getAttribute("username") %>"><p class="MyErrors"></p></div>
	<div class="birthday-drop">Email:<input type="text" class="form-control" name="emailaddress" value="<%=session.getAttribute("email") %>"><p class="MyErrors"></p></div>
	<div class="birthday-drop">Password:<input type="password" class="form-control" name="password"><p class="MyErrors"></p></div>
	<div class="birthday-drop">Gender:<select name="gender"  class="form-control">
              <option value="0" selected>Gender</option>
              <option value="male">Male</option> 
              <option value="female">Female</option>
              </select></div>
                            
	<div class="birthday-drop"> Birthday: <select name ="date" class="form-control">
                <option value="0" selected>Day</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                <option value="13">13</option>
                <option value="14">14</option>
                <option value="15">15</option>
                <option value="16">16</option>
                <option value="17">17</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="20">20</option>
                <option value="21">21</option>
                <option value="22">22</option>
                <option value="23">23</option>
                <option value="24">24</option>
                <option value="25">25</option>
                <option value="26">26</option>
                <option value="27">27</option>
                <option value="28">28</option>
                <option value="29">29</option>
                <option value="30">30</option>
                <option value="31">31</option>
              </select>
              <select name="month" class="form-control">
                <option value="0" selected>Month</option>
                <option value="1">Jan</option>
                <option value="2">Feb</option>
                <option value="3">Mar</option>
                <option value="4">Apr</option>
                <option value="5">May</option>
                <option value="6">Jun</option>
                <option value="7">Jul</option>
                <option value="8">Aug</option>
                <option value="9">Sept</option>
                <option value="10">Oct</option>
                <option value="11">Nov</option>
                <option value="12">Dec</option>
              </select>
              <select name="year" class="form-control">
                <option value="0" selected>Year</option>
                <option value="2015">2015</option>
                <option value="2014">2014</option>
                <option value="2013">2013</option>
                <option value="2012">2012</option>
                <option value="2011">2011</option>
                <option value="2010">2010</option>
                <option value="2009">2009</option>
                <option value="2008">2008</option>
                <option value="2007">2007</option>
                <option value="2006">2006</option>
                <option value="2005">2005</option>
                <option value="2004">2004</option>
                <option value="2003">2003</option>
                <option value="2002">2002</option>
                <option value="2001">2001</option>
                <option value="2000">2000</option>
                <option value="1999">1999</option>
                <option value="1998">1998</option>
                <option value="1997">1997</option>
                <option value="1996">1996</option>
                <option value="1995">1995</option>
                <option value="1994">1994</option>
                <option value="1993">1993</option>
                <option value="1992">1992</option>
                <option value="1991">1991</option>
                <option value="1990">1990</option>
                <option value="1989">1989</option>
                <option value="1988">1988</option>
                <option value="1987">1987</option>
                <option value="1986">1986</option>
                <option value="1985">1985</option>
                <option value="1984">1984</option>
                <option value="1983">1983</option>
                <option value="1982">1982</option>
                <option value="1981">1981</option>
                <option value="1980">1980</option>
                <option value="1979">1979</option>
                <option value="1978">1978</option>
                <option value="1977">1977</option>
                <option value="1976">1976</option>
                <option value="1975">1975</option>
                <option value="1974">1974</option>
                <option value="1973">1973</option>
                <option value="1972">1972</option>
                <option value="1971">1971</option>
                <option value="1970">1970</option>
                <option value="1969">1969</option>
                <option value="1968">1968</option>
                <option value="1967">1967</option>
                <option value="1966">1966</option>
                <option value="1965">1965</option>
                <option value="1964">1964</option>
                <option value="1963">1963</option>
                <option value="1962">1962</option>
                <option value="1961">1961</option>
                <option value="1960">1960</option>
                <option value="1959">1959</option>
                <option value="1958">1958</option>
                <option value="1957">1957</option>
                <option value="1956">1956</option>
                <option value="1955">1955</option>
                <option value="1954">1954</option>
                <option value="1953">1953</option>
                <option value="1952">1952</option>
                <option value="1951">1951</option>
                <option value="1950">1950</option>
                <option value="1949">1949</option>
                <option value="1948">1948</option>
                <option value="1947">1947</option>
                <option value="1946">1946</option>
                <option value="1945">1945</option>
                <option value="1944">1944</option>
                <option value="1943">1943</option>
                <option value="1942">1942</option>
                <option value="1941">1941</option>
                <option value="1940">1940</option>
                <option value="1939">1939</option>
                <option value="1938">1938</option>
                <option value="1937">1937</option>
                <option value="1936">1936</option>
                <option value="1935">1935</option>
                <option value="1934">1934</option>
                <option value="1933">1933</option>
                <option value="1932">1932</option>
                <option value="1931">1931</option>
                <option value="1930">1930</option>
                <option value="1929">1929</option>
                <option value="1928">1928</option>
                <option value="1927">1927</option>
                <option value="1926">1926</option>
                <option value="1925">1925</option>
                <option value="1924">1924</option>
                <option value="1923">1923</option>
                <option value="1922">1922</option>
                <option value="1921">1921</option>
                <option value="1920">1920</option>
                <option value="1919">1919</option>
                <option value="1918">1918</option>
                <option value="1917">1917</option>
                <option value="1916">1916</option>
                <option value="1915">1915</option>
                <option value="1914">1914</option>
                <option value="1913">1913</option>
                <option value="1912">1912</option>
                <option value="1911">1911</option>
                <option value="1910">1910</option>
                <option value="1909">1909</option>
                <option value="1908">1908</option>
                <option value="1907">1907</option>
                <option value="1906">1906</option>
                <option value="1905">1905</option>
              </select><p class="MyErrors"></p></div>
	<div class="birthday-drop"> Weight:<input type="text" class="form-control" name="weight" placeholder="<%=session.getAttribute("weight") %>"><p class="MyErrors"></p></div>
	<div class="birthday-drop">Height:<input type="text" class="form-control" name="height" placeholder="<%=session.getAttribute("height") %>" ><p class="MyErrors"></p></div>
	<div class="birthday-drop">Exercise:<input type="text" class="form-control" name="exercise" autocomplete="off" placeholder="<%=session.getAttribute("exercise") %>" ><p class="MyErrors"></p></div>
	
   
			<input type="submit" value="Save">
		
</form>
</body>
</html>


















