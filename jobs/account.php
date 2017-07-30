<?php
error_reporting(E_ALL & ~E_NOTICE);
session_start();
/*****************************************************************************/
include_once('includes/queryfunctions.php');
include_once('includes/functions.php');
$conn=mysql_connect(HOST . ":" . PORT , USER, PASS);
if (!$conn) {
    die('Could not connect: ' . mysql_error());
}
mysql_select_db(DB);

//check if user is logged in
SignedIn();

//check if user has clicked on logout button
if(isset($_POST["Submit"]) && $_POST["Submit"]=='Logout') LogOut();

if(isset($_POST["Submit"])){
	//check that the oldpass matches the one on the server.
	$oldpass = !empty($_POST["oldpass"]) ? "'" . $_POST["oldpass"] . "'" : 'NULL';

	//check that newpass and confirmpass are the same. -checked on client side using javascript but not the best option
	// this makes sure both passwords entered match
	if ($_POST['confirmpass'] !== $_POST['newpass']) {
		echo '<center><font color=\"#0033CC\"><b>Your passwords did not match.</b></font></center>';
		unset($_POST["Submit"]);
	}else{
		$newpass = !empty($_POST["newpass"]) ? "'" . $_POST["newpass"] . "'" : 'NULL';
		$confirmpass = !empty($_POST["confirmpass"]) ? "'" . $_POST["confirmpass"] . "'" : 'NULL';
		$pass = "'" . md5($_POST['newpass']) . "'";
		$email = $_SESSION["email"];
		if (!get_magic_quotes_gpc()) {
			$pass = "'" . addslashes(md5($_POST['newpass'])) . "'";
		}
	}

	$sql="SELECT pass FROM users WHERE userid=$_SESSION[userid]";
	$resultsuser=query($sql,$conn);
	$users = fetch_object($resultsuser);
	if (md5($_POST["oldpass"]) !== $users->pass) {
		echo '<center><font color=\"#0033CC\"><b>Old password does not match one in the database.<br> Account not updated.</b></font></center>';
		unset($_POST["Submit"]);
	}
	free_result($resultsuser);

	switch($_POST["Submit"]){
	case "Submit":
		$sql="UPDATE users SET pass=$pass WHERE userid=$_SESSION[userid]";
		$results=query($sql,$conn);
		$msg[0]="Sorry password not changed";
		$msg[1]="Password successfull updated";
		AddSuccess($results,$conn,$msg);

		//send mail that password has been changed.
		$commentinfo = "Dear member. \n Your password has been successful changed. \r Yours faithfully \n Samson";
		if ((int) $results==1) sendemail($commentinfo,supportemail,bcc,$email,"Account updated");
		break;
	}
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>By Samson</title>
<link href="css/main.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/epoch_styles.css"/>
<?php headericon(); ?>
<script language="JavaScript" src="js/highlight.js" type="text/javascript"></script>
<script type="text/javascript" src="js/formval.js"></script>
<script type="text/javascript">
<!--
var request;
var dest;

function ConfirmPass(){
	if (document.forms.account.confirmpass.value!=document.forms.account.newpass.value){
	 alert("Passwords do not match!");
	}
};

function validateOnSubmit() {
	var elem;
    var errs=0;
	// execute all element validations in reverse order, so focus gets
    // set to the first one in error.
	if (!validatePresent (document.forms.account.confirmpass,'inf_confirmpass')) errs += 1;
	if (!validatePresent (document.forms.account.newpass,'inf_newpass')) errs += 1;
	if (!validatePresent (document.forms.account.oldpass,'inf_oldpass')) errs += 1;

    if (errs>1)  alert('There are fields which need correction before sending');
    if (errs==1) alert('There is a field which needs correction before sending');

    return (errs==0);
};

function processStateChange(){
    if (request.readyState == 4){
        contentDiv = document.getElementById(dest);
        if (request.status == 200){
            response = request.responseText;
            contentDiv.innerHTML = response;
        } else {
            contentDiv.innerHTML = "Error: Status "+request.status;
        }
    }
}

function loadHTMLPost(URL, destination, button){
    dest = destination;
	pass = document.getElementById('oldpass').value;
	var str ='oldpass='+pass+'&button='+button;
	if (window.XMLHttpRequest){
        request = new XMLHttpRequest();
        request.onreadystatechange = processStateChange;
        request.open("POST", URL, true);
        request.setRequestHeader("Content-Type","application/x-www-form-urlencoded; charset=UTF-8");
		request.send(str);
    } else if (window.ActiveXObject) {
        request = new ActiveXObject("Microsoft.XMLHTTP");
        if (request) {
            request.onreadystatechange = processStateChange;
            request.open("POST", URL, true);
            request.send();
        }
    }
}
//-->
</script>
</head>
<body bgcolor="#FFFFFF">
<form action="account.php" method="post" name="account" id="account" enctype="multipart/form-data">
<div align="center">
<table>
 <tr>
   <td colspan="3" align="right"><?php mainheader(); ?></td>
 </tr>
 <tr>
   <th><?php loginheader(); ?></th>
   <th colspan="2"><?php profileheader(); ?></th>
 </tr>
 <tr>
 <td colspan="3"><table width="100%"  border="1" cellpadding="1">
   <tr>
     <th colspan="2">ACCOUNT</th>
   </tr>
   <tr>
     <td>Old Password </td>
     <td><input type="password" name="oldpass" id="oldpass" onblur="loadHTMLPost('ajaxfunctions.php','inf_oldpass','CheckPass')">
       <div id="inf_oldpass" class="warn">* </div></td>
   </tr>
   <tr>
     <td>New Password </td>
     <td><input type="password" name="newpass" id="newpass">
       <div id="inf_newpass" class="warn">* </div></td>
   </tr>
   <tr>
     <td>Confirm New Password</td>
     <td><input type="password" name="confirmpass" id="confirmpass" onBlur="ConfirmPass()">
       <div id="inf_confirmpass" class="warn">* </div></td>
   </tr>
   <tr>
     <td>&nbsp;</td>
     <td><input type="submit" name="Submit" value="Submit" onclick="return validateOnSubmit();">
       <input type="reset" name="Reset" value="Reset"></td>
   </tr>
 </table></td>
 <tr><td colspan="3" align="center"><?php footer(); ?></td></tr>
</table>
</div>
</form>
</body>
</html>
