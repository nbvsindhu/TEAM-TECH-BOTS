<%@ page import ="java.sql.*" %>
<%@ page language="java" import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>



<%
    String InputUsername = request.getParameter("InputUsername");
    String InputPassword1 = request.getParameter("InputPassword1");
	
	out.println("welcome " + InputUsername);
	
    Class.forName("com.mysql.jdbc.Driver");   //For mysql

     String url= "jdbc:mysql://localhost:3306/bsnldb?user=bsnl&password=bsnl123";

        Connection con = DriverManager.getConnection(url); // Mysql

    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from evm_customers where username='" + InputUsername + "' and pwd='" + InputPassword1 + "'");
    if (rs.next()) {
        session.setAttribute("InputUsername", InputUsername);
        out.println("Welcome " + InputUsername);

if(InputUsername.equals("manager"))
 {
   response.sendRedirect("read_signup_data.jsp");
 
 }
 
 else  response.sendRedirect("home.jsp");
                
    } else {
       // out.println("Invalid password <a href='index.jsp'>try again</a>");
		response.sendRedirect("index1.jsp");
    }
	
	
	


%>

