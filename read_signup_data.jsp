<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>
<%@ page contentType="text/html" %>
<%@ page import="java.sql.*" %>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
 
<!DOCTYPE html>
<html lang="en">
    <head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Streamline</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="css/css1.css">
    <link rel="stylesheet" href="js/js1.js">


	</head>
    <body>
<span class="label b">Banquet hall & venue booking</span>
<span class="label d">Catering Services</span>
<span class="label c">Stage Decoration</span>
<span class="label b">Costumes & makeup</span>
<span class="label a">Photography (Still & Video streaming)</span>
<span class="label d">Entertainment</span> 
<br><br><br>

<span class="label f">Customers Logged:-</span> 

	    <%
        String username=(String)session.getAttribute("username");
        %>

		<br><br><br>
			
<div align="center">
<table><b>
				
<tr>
<th bgcolor=#e0e0eb >S.No.</th>
<th bgcolor=#e0e0eb >Full Name</font></th>
<th bgcolor=#e0e0eb >Username</font></th>
<th bgcolor=#e0e0eb >City</font></th>
<th bgcolor=#e0e0eb >Contact Number</font></th>
<th bgcolor=#e0e0eb >Email</font></th>
<th bgcolor=#e0e0eb >Registered Date</font></th>
</b></tr>
</div>	

		
<div align="center">
<tr>

<%
String s_name = request.getParameter("searchname");

String DRIVER = "com.mysql.jdbc.Driver";	
Class.forName(DRIVER).newInstance();
Connection con=null;
ResultSet rst=null;
Statement stmt=null;	

String url="jdbc:mysql://localhost:3306/bsnldb?user=bsnl&password=bsnl123";		
		
con=DriverManager.getConnection(url);
stmt=con.createStatement();	

if(s_name==null) s_name = "%";
							
						
String query = "select full_name, username, city, phone, email, Entered_date from evm_customers where username not like 'manager'";

//out.println(query );
							
							
rst=stmt.executeQuery(query);
						
		  int j = 1;
          while (rst.next()) {
			  
			   out.println("<td>" + j + "</td>");
			   j++;
			   %>
			   			   
			  <% for (int i = 1; i <=6; i++) { %>
                <td>  <%=rst.getString(i)%>  </td>
				


                <% }%> 
								
     		
                </tr>
			
<%
                }
                rst.close();
                con.close();
%>

</center>
</table>
</div>


<jsp:include page="read_master_data.jsp"></jsp:include>


<br><br><br>

</body>
</html>
