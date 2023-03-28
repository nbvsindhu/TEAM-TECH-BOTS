<%@page language="java" %>
<%@page import="java.util.*" %>
<%@ page import ="java.sql.*" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./sign_up_css.css">
    <title>Document</title>
</head>
<body>
    <h1>Sign-up</h1>
    <div class="main">
        <div class="main1">
        <form action="sign_up.jsp" method="post" class="form-container">
                                <table style="width: 50%">
                                        <tr>
                                                <td>Enter Your complete Name: </td>
                                                <td><input type="text" name="full_name" required placeholder="Enter name" class="form-group" /></td>
                                        </tr>
                                        
                                        <tr>
                                                <td>username:</td>
                                                <td><input type="text" name="username" required placeholder="Enter username"  class="form-group"/></td>
                                        </tr>
                                        
                                        <tr>
                                                <td>Enter the city:</td>
                                                <td><input type="text" name="city" required placeholder="Enter City"  class="form-group"/></td>
                                        </tr>
                                        
                                        <tr>
                                                <td>Phone</td>
                                               <div><td><input type="text" name="phone" required placeholder="Enter phone number"  class="form-group"/></td></div> 
                                        </tr>
                                        
                                        <tr>
                                                <td>email</td>
                                                <td><input type="text" name="email" required placeholder="Enter email" class="form-group"/></td>
                                        </tr>
                                        </table>
                                <input type="submit" value="Submit"  class="form-group1"/></form>
                            </div>
                        </div>
    
</body>
</html>


<%
   String full_name = request.getParameter("full_name");
   String username = request.getParameter("username");
   String city = request.getParameter("city");
   String phone = request.getParameter("phone");
   String email = request.getParameter("email");

   if(username!=null)
   {

Class.forName("com.mysql.jdbc.Driver");   //For mysql
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bsnldb","bsnl", "bsnl123"); // Mysql
Statement st = con.createStatement();
	
//insert into EVM_CUSTOMERS(full_name,username, city, phone, email) values('test', 'test1', 'Hyd', '123456', 'krishna@gmail.com') // for direct testing
//int val = st.executeUpdate("insert into EVM_CUSTOMERS(full_name,username, city, phone, email) values('test', 'test1', 'Hyd', '123456', 'krishna@gmail.com')");
                                                         
	int val = st.executeUpdate("insert into EVM_CUSTOMERS(full_name,username, city, phone, email) values('" 
	+ full_name + "', '" 
	+ username + "', '" 
	+ city + "', '" 
	+ phone + "', '" 
	+ email + "')");
                                                         																							 
out.println("Signed-up successfully.");
out.println("Username is : " + username + " and password is: 12345 by default. <br>And change password using change password menu.");

 }
%>

</body>
</html>

