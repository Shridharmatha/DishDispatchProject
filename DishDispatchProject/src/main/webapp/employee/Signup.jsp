<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
 
	<title>Customer Signup</title>
	<style type="text/css">
		*{
			margin: 0;
			padding: 0;
			box-sizing: border-box;
		}
		input{
			width: 250px;
			text-align: center;
			border-top: none;
			border-inline: none;
			border-right: none;
			height: 30px;
		}
		#btn{
			width: 80px;
			height: 30px;
			background-color: orange;
			border-radius: 10px;
		}

	</style>
</head>
<body>
  <main>
  	<div style="width:100%; height:40px">
  		                <center>
  	                    <% String success = (String) request.getAttribute("success"); 
                           if (success != null) { %>
                            <div class="alert alert-success text-center">
                                <%= success %>
                            </div>
                        <% } %>
                        <% String failed = (String) request.getAttribute("failed"); 
                           if (failed != null) { %>
                            <div class="alert alert-danger text-center">
                                <%= failed %>
                            </div>
                        <% } %>
                        </center>
  	</div>
  	<div style="display: flex; justify-content: center; align-items: end; width: 100%; height: auto; border-radius: 20px; 
  	margin-top: 50px;">
  		<div style="width:400px; height: 550px; border: 1px solid black; box-shadow: 0px 0px 8px black;border-radius: 20px; ">
  			<img style="width:100%; height:100%;border-radius: 20px;" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSni4W_ssx3U1KqS7a7wY_Q4NVU2hW3CP-1jA&s">
  		</div>
  		<div style="width:400px; height: 550px; border: 1px solid black; box-shadow: 0px 0px 8px black;border-radius: 20px;">
  			<form action="signup" method="post">
  				<div style="margin-top: 23px; ">
  					<center style="display: block;">
			    <label>Name: </label><br>
				<input type="text" id="name" name="name" placeholder="Enter UserName">
				<br><br>
				<label>Phone No: </label><br>
				<input type="tel" id="phone" name="number" placeholder="Enter Phone No">
				<br><br>
				<label>Email: </label><br>
				<input type="email" id="email" name="email" placeholder="Enter Email">
				<br><br>
				<label>Password: </label><br>
				<input type="Password" id="password" name="pin" placeholder="Enter Password">
				<br><br>
				<label> Confirm Password: </label><br>
				<input type="Password" id="Conpassword" name="conpin" placeholder="Enter Confirm Password">
				<br><br>
					<p> Have account! &nbsp;<a href="Login.jsp">Login here!</a></p>
					<input id="btn" type="submit" name="register" value="Signup">
					
				</center>
				
			

			</div>
  			</form>
  		</div>
  	</div>
  </main>
</body>
</html>
