<?php
error_reporting(E_ALL & ~E_NOTICE);
session_start();

include_once('includes/queryfunctions.php');
include_once('includes/functions.php');
$conn=mysql_connect(HOST . ":" . PORT , USER, PASS);
if (!$conn) {
    die('Could not connect: ' . mysql_error());
}
mysql_select_db(DB);

if(isset($_GET["submit"])) $_POST["submit"]=$_GET["submit"];

if (isset($_POST["submit"])){
	switch ($_POST["submit"]){
		case 'Login':
			$iappid=0;
			$username = $_POST["username"];
			$sql = "SELECT userid,admin,email,usercategory,status,concat_ws(' ', fname, sname) AS user, pass FROM users WHERE loginname = '$username'";
			//check if user exist
			$results = mysql_query($sql,$conn);
			if (!$results){
				 die("Error." . mysql_error());
			}else{
				//check if password is same
				$user = mysql_fetch_object($results);
				if ($user==0) die("<center><font color=red>Invalid User.<a href=login.php?member=$_POST[member]><br>Please click here to go back.</a></font><center>");
				if ($user->usercategory!==$_POST["member"]){
					if ($user->admin!=='1') die("<center><font color=red>Invalid User Category.<a href=login.php?member=$_POST[member]><br>Please click here to go back.</a></font><center>");
				}
				if ($user->status!=='A') die("<center><font color=red>Account not active yet.<a href=login.php?member=$_POST[member]><br>Please click here to go back.</a></font><center>");
				if ($user->pass!=md5($_POST["password"])) die("<center><font color=red>Invalid Password.<a href=login.php?member=$_POST[member]><br>Please click here to go back.</a></font><center>");
				//set session variables.
				$_SESSION["user"]=$user->user;
				$_SESSION["userid"]=$user->userid;
				$_SESSION["admin"]=$user->admin; //for rights use
				$_SESSION["email"]=$user->email; //for rights use
				$_SESSION["usercategory"]=$user->usercategory;
				header("Location: index.php?member=$_POST[member]");
				exit;
			}
		break;
		case 'Logout':
			$iappid=0;
			$_SESSION = array();
			session_destroy();
			header("Location: index.php");
		break;
	}
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>tarclink system - IT Welfare Group</title>
<link rel="stylesheet" type="text/css" href="css/main.css"/>
<?php //headericon(); ?>
<link rel="shortcut icon" href="favicon.ico"/>
<link rel="icon" href="favicon.ico"/>
</head>
<body>
<SCRIPT TYPE="text/javascript">
// Only script specific to this form goes here.
// General-purpose routines are in a separate file.
  function validateOnSubmit() {
	var elem;
    var errs=0;
	// execute all element validations in reverse order, so focus gets
    // set to the first one in error.
	//if (!validateSelect(document.forms.index.sex, 'inf_gender', true)) errs += 1;
	//if (!validatePresent (document.forms.index.name,'inf_name')) errs += 1;

    if (errs>1)  alert('There are fields which need correction before sending');
    if (errs==1) alert('There is a field which needs correction before sending');

    return (errs==0);
  };
</SCRIPT>
<form action="login.php" method="post" enctype="multipart/form-data" name="login" id="login">
<div align="center">
<table width="55%"  border="1" cellpadding="1" valign="center">
  <tr>
    <td align="right"><?php mainheader(); ?></td>
  </tr>
  <tr>
	<td align="center"><table border="1" cellpadding="1">
      <tr>
        <th>
		<?php
          if($_GET["member"]=='A') echo "<DIV align=center>Registered <BR>Jobseeker</DIV>";
		  if($_GET["member"]=='E') echo "<DIV align=center>Registered <BR>Employer</DIV>";
		  if($_GET["member"]=='D') echo "<DIV align=center>Administrator</DIV>";
		 ?><input name="member" type="hidden" value="<?php echo $_GET["member"]?>">
          </th>
      </tr>
	  <tr>
        <td>User Name<br>
            <input type="text" name="username" id="username"></td>
      </tr>
      <tr>
        <td>Password<br>
            <input type="password" name="password" id="password"></td>
      </tr>
    </table><?php if(!isset($_SESSION["userid"])) echo "<b style=\" color:#000099\">Please enter your credentials to use the system!<img src=\"images/unlock.png\" width=\"16\" height=\"16\"></b>"; ?></td>
  </tr>
  <tr>
    <td align="center">
	<?php loginheader1(); ?><br>
	Not a member yet?: <?php
          if($_GET["member"]=='A') echo "<a href='register.php?member=A'>Sign Up</a>";
		  if($_GET["member"]=='E') echo "<a href='register.php?member=E'>Sign Up</a>";
		  if($_GET["member"]=='D') echo "<a href='register.php?member=D'>Sign Up</a>";
		 ?><br>
	<a href="forgot.php">Forgot your ID or Password:</a>
	</td>
  </tr>
</table>
</div>
</form>
</body>
</html>
<!-- (All fields marked with <font class="smallred">*</font> are required) -->
