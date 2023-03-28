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
<br><br><br>
<span class="label f">Event Management Bookings:-</span> 


	    <%
        String username=(String)session.getAttribute("username");
        %>

		<br><br><br>
			
<div align="center">



<%

String DRIVER = "com.mysql.jdbc.Driver";	
Class.forName(DRIVER).newInstance();
Connection con=null;
ResultSet rst=null;
Statement stmt=null;	

String url="jdbc:mysql://localhost:3306/bsnldb?user=bsnl&password=bsnl123";		
		
con=DriverManager.getConnection(url);
stmt=con.createStatement();	

						
String query = "select username, Event_type, Banquet_hall_Location, Banquet_hall_ID_OD, Banquet_hall_date, Enter_the_items, No_of_plates, Catering_veg_NV, Dress_type " + 
				"from evm_user_master_data where username not like 'manager'";

//out.println(query );
							
							
rst=stmt.executeQuery(query);
					
		  int j = 1;
          while (rst.next()) {
			  
		%>	  
			  
<TABLE>

<TR><TH>Customer Name</TH><TD> <%= rst.getString(1)%> </TD>

<TH>Event Type</TH><TD> <%= rst.getString(2)%> </TD>
</tr>
<TR>
<TH>Banquet Hall Location</TH><TD> <%= rst.getString(3)%> </TD>

<TH>Banquet Hall</TH><TD> <%= rst.getString(4)%> </TD>
</tr>
<TR>
<TH>Date & time Booked for: </TH><TD> <%= rst.getString(5) + " Time: " %> <%= rst.getString(6)%>  </TD>

<TH>Food Items:</TH><TD> <%= rst.getString(6)%> </TD>
</tr>
<TR>
<TH>Catering:</TH><TD> <%= rst.getString(7) + " Plates "%> <%= rst.getString(8)%> </TD>


<TH>Dress Type</TH><TD> <%= rst.getString(9)%> </TD>

</tr>
</TABLE>
<br><br>
		
                <% } %>
								
     		
                </tr>
				

			
<%
               
                rst.close();
                con.close();
%>

<!--
</center>
</table>
-->





</div>




</body>
</html>
