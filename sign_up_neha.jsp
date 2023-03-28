<html>
<head>
 
   <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 
  <!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
 <link rel="stylesheet" href="./Sign-up form.css">
</head>
 
<body>
  <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<!-- Login form creation starts-->
  <section class="container-fluid">
    <!-- row and justify-content-center class is used to place the form in center -->
    <section class="row justify-content-center">
      <section class="col-12 col-sm-6 col-md-4">
        <form class="form-container">
        <div class="form-group">
          <h4 class="text-center font-weight-bold"> Sign up </h4>
          <label for="InputEmail1"> Full Name </label>
           <input type="text" class="form-control" name="full_name"Required placeholder="Enter email">
        </div>


        <div class="form-group">
            <label for="InputEmail1">Username</label>
             <input type="text" class="form-control" name="Username"Required placeholder="Enter username">
          </div>


          <div class="form-group">
            <label for="InputEmail1">City</label>
             <input type="text" class="form-control" name="City"Required placeholder="Enter City">
          </div>


        <div class="form-group">
            <label for="InputPassword1"> Phone Number </label>
            <input type="text" class="form-control" name="Phone"Required placeholder="Enter phone number">
          </div>

        
        <div class="form-group">
            <label for="InputPassword1"> Email </label>
            <input type="email" class="form-control" name="email"Required placeholder="Enter email">
          </div>

        <button type="submit" class="btn btn-primary btn-block">Submit</button>
        </form>
      </section>
    </section>
  </section>
<!-- Login form creation ends -->

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