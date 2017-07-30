<?php
error_reporting(E_ALL & ~E_NOTICE);
session_start();
/*****************************************************************************
/*Copyright (C) 2008 Tony Iha Kazungu
/*****************************************************************************
Job Recruitment System (Taifajobs Version 1.0), is an interactive system that enables small to medium
sized organization keep track of job applications and advertisement.  It could either be uploaded to the internet or used
on the local intranet.  It keep tracks of job applications and applicants resume.  It can be linked to the HR system as the starting point to
shortlisting of candidates.

This program is free software; you can redistribute it and/or modify it under the terms
of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License,
or (at your option) any later version.
This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
See the GNU General Public License for more details.
You should have received a copy of the GNU General Public License along with this program;
if not, write to the Free Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA or
check for license.txt at the root folder
/*****************************************************************************
For any details please feel free to contact me at taifa@users.sourceforge.net
Or for snail mail. P. O. Box 938, Kilifi-80108, East Africa-Kenya. Mobile Phone 254-0725-547006
/*****************************************************************************/
include_once('includes/queryfunctions.php');
include_once('includes/functions.php');
$conn=mysql_connect(HOST . ":" . PORT , USER, PASS);
if (!$conn) {
    die('Could not connect: ' . mysql_error());
}
mysql_select_db(DB);

    function make_seed()
{
    list($usec, $sec) = explode(' ', microtime());
    return (float) $sec + ((float) $usec * 100000);
}

if (isset($_POST["submit"]) && $_POST["submit"]=="Send Password"){
srand(make_seed());
$newpass = rand();
$pass = md5($newpass);
		$loginname = "'" . $_POST[loginname] . "'";
		if (!get_magic_quotes_gpc()) {
			$pass = addslashes($pass);
			$loginname = "'" . addslashes($_POST['loginname']) . "'";
		}

		//The username you have specified does not match any user in our system.
		$sql = "SELECT loginname,email,concat_ws(' ',fname,sname) as usernames FROM users WHERE loginname = '$_POST[loginname]'";
		$results = query($sql,$conn);
		$user = fetch_object($results);
		$email = $user->email;
		$usernames = $user->usernames;
		if(num_rows($results)){
			$sql="UPDATE users SET pass='$pass' WHERE loginname=$loginname";
			$results=query($sql,$conn);
			$msg[0]="Sorry no such user found";
			$msg[1]="New password has been send to your email address.";
			AddSuccess($results,$conn,$msg);

			$commentinfo = "Dear $usernames,\n Your password has been changed to: $newpass.\n You can now login here http://172.16.12.8/jobs and use the system.";
			//send new password to user
			if ((int) $results==1) sendemail($commentinfo,supportemail,bcc,$email,"Account changed");

		}else{ //else warn that user does not exist
			echo "<center><font color=\"#0033CC\"><b>Sorry, the loginname ".$_POST['loginname']." does not exist.</b></font></center>";
		}
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>tarclink - password</title>
<link href="css/main.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/epoch_styles.css"/>
<script language="JavaScript" src="js/highlight.js" type="text/javascript"></script>
<script type="text/javascript" src="js/formval.js"></script>
<script type="text/javascript">
<!--
var request;
var dest;

function validateOnSubmit() {
	var elem;
    var errs=0;
	// execute all element validations in reverse order, so focus gets
    // set to the first one in error.
    //if (!validateEmail (document.forms.forgot.email,'inf_email',true)) errs += 1;
	if (!validatePresent (document.forms.forgot.loginname,'inf_loginname')) errs += 1;

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
	iid_no = document.getElementById('iid_no').value;
	var str ='mem_id='+iid_no+'&button='+button+'&searchfield=iid_no';
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
<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-size: 12pt;
}
-->
</style>
</head>
<body bgcolor="#FFFFFF">
<form action="forgot.php" method="post" name="forgot" id="forgot" enctype="multipart/form-data">
<div align="center">
<table>
 <tr align="right"><td colspan="3"><?php mainheader(); ?></td></tr>
 <tr>
 <td valign="top"></td>
 <td colspan="2"><table border="0">
     <tr>
      <th scope="col" colspan="2">tarclink PASSWORD REMINDER</th>
    </tr>
     <tr>
       <th scope="col" colspan="2"><div id="forgot-headline"></div></th>
     </tr>
    <tr>
      <td colspan="2">Forgot Your Password?
        <hr>
        Enter your username and we'll send your password to the email address associated with the account.
        </td>
      </tr>
    <tr>
      <td>Login name</td>
      <td>
        <input name="loginname" type="text" id="loginname" value=""/>
        <input type="submit" name="submit" value="Send Password" onclick="return validateOnSubmit();"/>
        <div id="inf_loginname" class="warn">*</div></td>
      </tr>
</table>

</td>
 <tr><td colspan="3" align="center"><?php footer(); ?></td></tr>
</table>
</div>
</form>
</body>
</html>
