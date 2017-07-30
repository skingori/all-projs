<!DOCTYPE html>
<html>
  <head>
    <title>Ushirika|| Register</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- styles -->
    <link href="css/styles.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="login-bg">
  	<div class="header">
	     <div class="container">
	        <div class="row">
	           <div class="col-md-12">
	              <!-- Logo -->
	              <div class="logo">
	                 <h1><a href="">Ushirika Signup</a></h1>
	              </div>
	           </div>
	        </div>
	     </div>
	</div>

	<div class="page-content container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-wrapper">
			        <div class="box">
			            <div class="content-wrap">


						<form  method="POST" id="form1">

			                <h6>Sign Up</h6>
			                <input class="form-control" type="text" name="firtname" placeholder="First Name">
							<input class="form-control" type="text" name="lastname" placeholder="Last Name">
			                <input class="form-control" type="email" name="email" placeholder="E-mail address">
							<br>
			                <input class="form-control" type="text" name="phone_num" placeholder="Phone Number">
							<p>
								<select name="category" id="category"  class="form-control" required>
									<option value='1'>Member<font color="red">*</font></option>
									<option value='2'>Admin*</option>
									<span class="glyphicon glyphicon-envelope form-control"></span>
								</select>
							</p>

							<input class="form-control" type="text" name="username" placeholder="Username">
			                <input class="form-control" type="password" name="password" placeholder="Password">
			                <input class="form-control" type="password" name="conf_pass" placeholder="Confirm Password">

			                <button type="submit" name="create" class="btn btn-primary btn-danger">Register</button>


			            </form>

			            </div>
			        </div>

					<!-- php coding start here -->

					<?php include "connection/connector.php"; ?>
					<?php
					if (isset($_POST['create'])){

						$firstname=$_POST['firstname'];
						$lastname=$_POST['lastname'];
						$email=$_POST['email'];
						$phonenum=$_POST['phone_num'];
						$username=$_POST['username'];
						$category=$_POST['category'];
						$password=$_POST['password'];
						$encrypted = md5($password); // Encrypting pssword using md5 algo

						$query=mysql_query("INSERT INTO users(`category`,`username`,`password`,`firstname`,`lastname`,`email`,`status`,`phone_num`)
						VALUES('$category','$username','$encrypted','$firstname','$lastname','$email','inactive','$phonenum')
						")or die(mysql_error());
						?>
						<script type="text/javascript">
							alert('You are Now Registered.Please login now to Proceed ');
							window.location="login.php";
						</script>

						<?php
					}
					?>

					<!-- php coding end here -->


			        <div class="already">
			            <p>Have an account already?</p>
			            <a href="login.php">Login</a>
			        </div>
			    </div>
			</div>
		</div>
	</div>



    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/custom.js"></script>
  </body>
</html>
