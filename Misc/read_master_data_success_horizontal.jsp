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

<span class="label f">Event Management:-</span> 
<span class="label w">"   "</span> 
<span class="label b">1</span>
<span class="label d">2 </span>
<span class="label c">3</span>
<span class="label b">4</span>
<span class="label a">5</span>
<span class="label d">6</span> 
<span class="label c">7</span>
<br><br>


	    <%
        String username=(String)session.getAttribute("username");
        %>

		<br><br><br>
			
<div align="center">
<table><b>
				
<tr>
<th bgcolor=#e0e0eb >S.No.</th>
<th bgcolor=#e0e0eb >username</font></th>
<th bgcolor=#e0e0eb >Event_type</font></th>
<th bgcolor=#e0e0eb >Banquet_hall_Location</font></th>
<th bgcolor=#e0e0eb >Banquet_hall_ID_OD</font></th>
<th bgcolor=#e0e0eb >Banquet_hall_date</font></th>
<th bgcolor=#e0e0eb >Banquet_hall_time</font></th>
<th bgcolor=#e0e0eb >No_of_plates</font></th>
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
							
						
String query = "select username, Event_type, Banquet_hall_Location, Banquet_hall_ID_OD, Banquet_hall_date, Banquet_hall_time, No_of_plates from evm_user_master_data";

//out.println(query );
							
							
rst=stmt.executeQuery(query);
						
		  int j = 1;
          while (rst.next()) {
			  
			   out.println("<td>" + j + "</td>");
			   j++;
			   %>
			   			   
			  <% for (int i = 1; i <=7; i++) { %>
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


</body>
</html>
