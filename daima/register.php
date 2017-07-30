<?php require_once('connection/conn.php'); ?>
<?php
if (!function_exists("GetSQLValueString")) {
	function GetSQLValueString($theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "")
	{
		if (PHP_VERSION < 6) {
			$theValue = get_magic_quotes_gpc() ? stripslashes($theValue) : $theValue;
		}

		$theValue = function_exists("mysql_real_escape_string") ? mysql_real_escape_string($theValue) : mysql_escape_string($theValue);

		switch ($theType) {
			case "text":
				$theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
				break;
			case "long":
			case "int":
				$theValue = ($theValue != "") ? intval($theValue) : "NULL";
				break;
			case "double":
				$theValue = ($theValue != "") ? doubleval($theValue) : "NULL";
				break;
			case "date":
				$theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
				break;
			case "defined":
				$theValue = ($theValue != "") ? $theDefinedValue : $theNotDefinedValue;
				break;
		}
		return $theValue;
	}
}

mysql_select_db($database_conn, $conn);
$query_Recordset1 = "SELECT * FROM users";
$Recordset1 = mysql_query($query_Recordset1, $conn) or die(mysql_error());
$row_Recordset1 = mysql_fetch_assoc($Recordset1);
$totalRows_Recordset1 = mysql_num_rows($Recordset1);
?>

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


</head>

<body>
	
	<div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">Log in</div>
				<div class="panel-body">

					<form form  method="POST" id="form1">
						<fieldset>
							<div class="form-group">
								<input class="form-control" placeholder="E-mail" id="email" name="email" type="email" autofocus="">
							</div>
							<div class="form-group">
								<input class="form-control" type="text" name="firstname" id="firstname" placeholder="First Name">
							</div>
							<div class="form-group">
								<input class="form-control" type="text" name="lastname" id="lastname" placeholder="Last Name">
							</div>
							<div class="form-group">
								<input class="form-control" type="text" name="phonenumber" id="phonenumber" placeholder="Phone Number">
							</div>
							<div class="form-group">
								<select name="category" id="category"  class="form-control" required>
									<option value='1'>Farmer*</option>
									<option value='2'>Collector*</option>
									<option value='3'>Accounts*</option>
									<option value='4'>Admin*</option>
									<span class="glyphicon glyphicon-envelope form-control"></span>
								</select>
							</div>
							<div class="form-group">
								<input type="text" class="form-control" placeholder="username" name="username" autocomplete="off" id="username" minlength="4" required/>
								<!--<span class="" id="user-result"></span>-->
								<td> <span id="user-result"></span></td>
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Password" name="password" id="password" type="password" value="">
							</div>
							<div>
								<input class="form-control" type="password" name="conf_pass" placeholder="Confirm Password">
							</div>
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
				include "connection/conn.php";

				if(isset($_POST['create'])){

				//start of good code

					$firstname=$_POST['firstname'];
					$lastname=$_POST['lastname'];
					$username=$_POST['username'];
					$mnumber=$_POST['phonenumber'];
					//$idnumber=$_POST['idnumber'];
					$email=$_POST['email'];
					$category=$_POST['category'];
					$mypassword=$_POST['password'];
					$conf_pass=$_POST['conf_pass'];
					$encrypted=hash("sha256" ,$mypassword); // Encrypting pssword


					if(empty($_POST['username']) || empty($_POST['password']) || empty($_POST['conf_pass']) || empty($_POST['email'])){
						echo '<b>Please fill out all fields.</b>';

					}elseif($_POST['password'] != $_POST['conf_pass']){
						echo '<b><font color="red">Error!! Your Passwords do not match.</font></b></b>';
					}else{

						$dup = mysql_query("SELECT username FROM users WHERE username='".$_POST['username']."'");
						if(mysql_num_rows($dup) >0){
							echo '<b><font color="red">Error!! Username Already Used.</font></b>';
						}
						else{
							//$url = 'http:tarclink.com';
							// echo '<META HTTP-EQUIV=Refresh CONTENT="2; URL='.$url.'">';

							$sql=mysql_query("INSERT INTO users(`firstname`,`lastname`,`username`,`phone_num`,`email`,`password`,`category`,`status`)
                      VALUES('$firstname','$lastname','$username','$mnumber','$email','$encrypted','$category','inactive')
                      ");//or die(mysql_error());

							if($sql){
								echo '<b><font color="green">Congrats, You are now Registered.</font></b>';
								$url = 'login.php';
								echo '<META HTTP-EQUIV=Refresh CONTENT="2; URL='.$url.'">';
							}
							else{
								echo '<b>Error!! Registeration.</b>';
							}
						}
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