<%@page language="java" %>
<%@page import="java.util.*" %>
<%@ page import ="java.sql.*" %>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">


<body>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User sign-up utility</title>
</head>

</head>
<body>
<h1>Sign-up for the Event Management Rrequirements</h1>
<form action="sign_up.jsp" method="post">
                        <table style="width: 50%">
                                <tr>
                                        <td>Enter Your complete Name: </td>
                                        <td><input type="text" name="full_name" required /></td>
                                </tr>
								
                                <tr>
                                        <td>username:</td>
                                        <td><input type="text" name="username" required /></td>
                                </tr>
								
                                <tr>
                                        <td>Enter the city:</td>
                                        <td><input type="text" name="city" required /></td>
                                </tr>
								
								
                                <tr>
                                        <td>Phone</td>
                                        <td><input type="text" name="phone" required /></td>
                                </tr>
                                <tr>
                                        <td>email</td>
                                        <td><input type="text" name="email" required /></td>
                                </tr>
                                </table>
                        <input type="submit" value="Submit" /></form>






<%
       // String userid = request.getParameter("uname");

   String full_name = request.getParameter("full_name");
   String username = request.getParameter("username");
   String city = request.getParameter("city");
   String phone = request.getParameter("phone");
   String email = request.getParameter("email");


   if(username!=null)
   {
  //  String unixCommand = "sh /home/nagadmin/tomcat/webapps/ROOT/addmin_ux/ux_user_create.sh " + user1;

        //out.println(unixCommand);

    // Runtime rt = Runtime.getRuntime();
    // rt.exec(unixCommand);

        //out.println("Print Test Line after execution with input and output paths.");


    Class.forName("com.mysql.jdbc.Driver");   //For mysql


   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bsnldb","bsnl", "bsnl123"); // Mysql
   
    Statement st = con.createStatement();
	
	
	//insert into EVM_CUSTOMERS(full_name,username, city, phone, email) values('test', 'test1', 'Hyd', '123456', 'krishna@gmail.com')
	

//int val = st.executeUpdate("insert into EVM_CUSTOMERS(full_name,username, city, phone, email) values('test', 'test1', 'Hyd', '123456', 'krishna@gmail.com')");
                                                         
	int val = st.executeUpdate("insert into EVM_CUSTOMERS(full_name,username, city, phone, email) values('" 
	+ full_name + "', '" 
	+ username + "', '" 
	+ city + "', '" 
	+ phone + "', '" 
	+ email + "')");
                                                         
														 
														 

out.println("Signed-up successfully.");
out.println("Username is : " + username + " and password is: 12345 by default. And change password using change password menu.");

 }


%>

</body>
</html>

