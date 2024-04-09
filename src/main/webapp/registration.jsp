<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up</title>

<!-- Font Icon -->
<link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>
					
						<form action="RegisterServlet" method="post">
							<table>
							<tr><td>Name:</td><td><input type="text" name="txtName"></td></tr>
							<tr><td>Email:</td><td><input type="text" name="txtEmail"></td></tr>
							<tr><td>Password:</td><td><input type="password" name="txtPass"></td></tr>
							<tr><td>Contact Info:</td><td><input type="text" name="txtContact"></td></tr>
							<tr><td><p> This Is A Security Please Remember This And Your Given Name ! </p></td></tr>
							<tr><td>What Is Your Pet Name:</td><td><input type="text" name="txtPetName"></td></tr>
							<tr><td><input type="submit" value="Register"></td></tr>
							</table>
						</form>
						<div class="form-group">
							<input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
							<label for="agree-term" class="label-agree-term">I agree all statements in <a href="#" class="term-service">Terms of service</a></label>
						</div>
					</div>
					<div class="signup-image">
						<figure>
							<img src="images/signup-image.jpg" alt="sing up image">
						</figure>
						<a href="login.jsp" class="signup-image-link">I am already member</a>
					</div>
				</div>
			</div>
		</section>


	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>

</body>
</html>
