
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Daima || Register</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/datepicker3.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">

<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->
<script src="custom/incl/jquery.js"></script>
<script src="custom/incl/script.js"></script>
<script src="custom/incl/script.responsive.js"></script>
<link href="css/registerback.css" rel="stylesheet">

</head>

<body>
	
	<div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">Farmer || Register</div>
				<div class="panel-body">

					<form form  method="POST" id="form1">
						<fieldset>
							<div class="form-group">
								<input class="form-control" placeholder="Email" id="email" name="farmeremail" type="email" autofocus="">
							</div>
							<div class="form-group">
								<input class="form-control" type="text" name="farmerfirstname" id="firstname" placeholder="First name">
							</div>
							<div class="form-group">
								<input class="form-control" type="text" name="farmerlastname" id="lastname" placeholder="Last name">
							</div>
							<div class="form-group">
								<input class="form-control" type="text" name="farmerphonenumber" id="phonenumber" placeholder="Mobile number">
							</div>
							<!--<div class="form-group">
								<select name="category" id="category"  class="form-control" required>
									<option value='1'>Farmer*</option>
									<option value='2'>Collector*</option>
									<option value='3'>Accounts*</option>
									<option value='4'>Admin*</option>
									<span class="glyphicon glyphicon-envelope form-control"></span>
								</select>
							</div>-->
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Username" name="farmerusername" autocomplete="off"  minlength="4" required/>
								<!--<span class="" id="user-result"></span>-->
								<td> <span id="user-result"></span></td>
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Password" name="password" id="password" type="password" value="">
							</div>
							<!--<div>
								<label>Confirm Password:</label>
								<input class="form-control" type="password" name="conf_pass" placeholder="">
							</div>-->
							<div class="checkbox">
								<label>
									<input name="remember" type="checkbox" value="Remember Me">Remember Me
								</label>
							</div>


							<button type="submit" name="create" class="btn btn-primary btn-success btn-block btn-flat">Register</button>

						</fieldset>
					</form>

					<div class="form-horizontal">
						<p>Have an account already? <a href="login.php">Login</a></p>

					</div>
				</div>

				<!-- start of php -->
				<?php
				include "connection/mysqlicon.php";

				if(isset($_POST['create'])) {
				$fusername = $_POST['farmerusername'];
				$ffirstname = $_POST['farmerfirstname'];
				$flastname = $_POST['farmerlastname'];
				$fphone = $_POST['farmerphonenumber'];
				$femail = $_POST['farmeremail'];
				$category='1';
				$mypassword=$_POST['password'];
				$fpassword=hash("sha256" ,$mypassword);
				// checking empty fields
				if(empty($fusername) || empty($femail) || empty($fpassword)) {

				if(empty($fusername)) {
				echo "<font color='red'>Username field is empty.</font><br/>";
				}

				if(empty($femail)) {
				echo "<font color='red'>Email field is empty.</font><br/>";
				}

				if(empty($fpassword)) {
				echo "<font color='red'>Password field is empty.</font><br/>";
				}

				//link to the previous page
				echo "<br/><a href='javascript:self.history.back();'>Go Back</a>";
				} else {
				// if all the fields are filled (not empty)

				//insert data to database
				$result = mysqli_query($mysqli, "INSERT INTO farmer_table(farmer_firstname ,farmer_lastname,farmer_username ,farmer_email ,farmer_phonenumber ,farmer_password,farmer_regdate) 
VALUES('$ffirstname','$flastname','$fusername' ,'$femail' ,'$fphone' ,'$fpassword' , now())");

					$result = mysqli_query($mysqli, "INSERT INTO login_table(login_username ,login_password ,login_category ,login_status) 
VALUES('$fusername','$fpassword','$category' ,'inactive')");

				//display success message
				echo "<font color='green'>Data added successfully.";
				echo "<br/><a href='index.php'>View Result</a>";
					}
					}
					?>

				<!-- end of php -->


			</div>
		</div><!-- /.col-->
	</div><!-- /.row -->	
	
		

	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script>
		!function ($) {
			$(document).on("click","ul.nav li.parent > a > span.icon", function(){		  
				$(this).find('em:first').toggleClass("glyphicon-minus");	  
			}); 
			$(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>
	<script>
		$(document).ready(function(){
			$("#username").keypress(function(event){
				var inputValue = event.charCode;
				if(!(inputValue >= 65 && inputValue <= 120) && (inputValue != 32 && inputValue != 0)){
					event.preventDefault();
					alert("Wrong input for username | Number not allowed");
				}

			});

		});
		//for username
		$(document).ready(function(){
			$("#sirname").keypress(function(event){
				var inputValue = event.charCode;
				if(!(inputValue >= 65 && inputValue <= 120) && (inputValue != 32 && inputValue != 0)){
					event.preventDefault();
					alert("Wrong input for Sirname | Number not allowed");
				}
			});
		});
		//for username
		$(document).ready(function(){
			$("#").keypress(function(event){
				var inputValue = event.charCode;
				if(!(inputValue >= 65 && inputValue <= 120) && (inputValue != 32 && inputValue != 0)){
					event.preventDefault();
					alert("Wrong input for Name | Number not allowed");
				}
			});
		});

		//for username
		$(document).ready(function(){
			$("#firstname").keypress(function(event){
				var inputValue = event.charCode;
				if(!(inputValue >= 65 && inputValue <= 120) && (inputValue != 32 && inputValue != 0)){
					event.preventDefault();
					alert("Wrong input for Name | Number not allowed");
				}
			});
		});
		//for username
		$(document).ready(function(){
			$("#lastname").keypress(function(event){
				var inputValue = event.charCode;
				if(!(inputValue >= 65 && inputValue <= 120) && (inputValue != 32 && inputValue != 0)){
					event.preventDefault();
					alert("Wrong input for Name | Number not allowed");
				}
			});
		});
	</script>



	<script type="text/javascript">
		$(document).ready(function() {
			$("#username").keyup(function (e) {

				//removes spaces from username
				$(this).val($(this).val().replace(/\s/g, ''));

				var username = $(this).val();
				if(username.length < 1){$("#user-result").html('');return;}

				if(username.length >= 1){
					$("#user-result").html('<img src="images/loader.gif" />');
					$.post('check-uname.php', {'username':username}, function(data) {
						$("#user-result").html(data);
					});
				}
			});
		});
	</script>
</body>

</html>

<?php
mysql_free_result($Recordset1);
?>