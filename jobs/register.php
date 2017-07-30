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

//check if user has clicked on logout button
if(isset($_POST["submit"]) && $_POST["submit"]=='Logout') LogOut();

if(isset($_GET["search"]) && !empty($_GET["search"])){
	//have this as a search function
	$userid=$_GET["search"];
	$_POST["userid"] = $_GET["search"];
	$_POST["submit"]="Find";
}

if(isset($_POST["submit"])){
	if($_POST["submit"]=="Register" || $_POST["submit"]=="Edit"){
		$userid =$_POST["userid"];
		$fname = !empty($_POST["fname"]) ? "'" . $_POST["fname"] . "'" : 'NULL';
		$mname = !empty($_POST["mname"]) ? "'" . $_POST["mname"] . "'" : 'NULL';
		$sname = !empty($_POST["sname"]) ? "'" . $_POST["sname"] . "'" : 'NULL';
		$contact = $_POST["fname"] .' '. $_POST["mname"] .' '. $_POST["sname"];
		// here we encrypt the password and add slashes if needed
		$pass = "'" . md5($_POST['pass']) . "'";
		$loginname = "'" . $_POST['loginname'] . "'";
		if (!get_magic_quotes_gpc()) {
			$pass = "'" . addslashes(md5($_POST['pass'])) . "'";
			$loginname = "'" . addslashes($_POST['loginname']) . "'";
		}
		$email = $_POST["email"];
		$dateregistered = !empty($_POST["dateregistered"]) ? "'" . $_POST["dateregistered"] . "'" : 'NULL';
		$admin = !empty($_POST["admin"]) ? "'" . $_POST["admin"] . "'" : 'NULL';
		$status = !empty($_POST["status"]) ? "'" . $_POST["status"] . "'" : 'NULL';
		$usercategory = $_POST["member"]=="A" ? "A" : "E";

		//checks for passwords mismatch and if loginame already exists
		$msg = GetUser();
		if(isset($msg)){
			echo $msg;
			unset($_POST["submit"]);
		}
	}

	switch($_POST["submit"]){
	case "Register":
		$sql="INSERT INTO users (fname,mname,sname,loginname,pass,email,dateregistered,`status`,usercategory)
				VALUES($fname,$mname,$sname,$loginname,$pass,'$email',now(),$status,'$usercategory')";
		$results=query($sql,$conn);
		$msg[0]="Sorry account not created";
		$msg[1]="Thank you, you have registered - you may now <a href=\"index.php\">Click here to login</a>";
		AddSuccess($results,$conn,$msg);

		$id = mysql_insert_id();

		//Update applicant or employer depending on registration.
		if($results)
		{
			if($usercategory=='A'){
				$sql="INSERT INTO applicant (applicantid,surname,mname,fname,hemail) VALUES($id,$sname,$mname,$fname,'$hemail')";
				$results=query($sql,$conn);
				//$msg[0]="Sorry applicants record not created";
				//$msg[1]="Applicants record successfull created";
				$msg[0]="";
				$msg[1]="";
				AddSuccess($results,$conn,$msg);
				//send mail to administrator
				if ((int) $results==1) sendemail($commentinfo,supportemail,bcc,$email,"Registered applicant to activate");
			}

			if($usercategory=='E'){
				$sql="INSERT INTO employer (employerid,email,contact) VALUES($id,'$email','$contact')";
				$results=query($sql,$conn);
				//$msg[0]="Sorry employers record not created";
				//$msg[1]="Employer's record successfull created";
				$msg[0]="";
				$msg[1]="";
				AddSuccess($results,$conn,$msg);
				//send mail to administrator
				if ((int) $results==1) sendemail($commentinfo,supportemail,bcc,$email,"Registered employer to activate");
			}
		}

		//$commentinfo = "Thank you for opening an account with us. <br>Your user loginname is $loginname.  Please wait for 24 hours for you account to be activated.";
		$commentinfo = "Dear $contact,\n
			<p>
			We thank you very much to join us as a member at our website http://www.kemri-wellcome.org. Your Login ID & Password and Company Information given below :
			</p>
			\n
			-------------------------------------------
			<p>
			Login ID : $loginname\n
			Password :
			</P>
			\n\n
			Contact Details :
			\n\n
			Company :\n
			Name : $contact\n
			Address : P. O. Box 938,\n
			Kilifi-80108\n
			Kenya\n
			Email : tiha@taifaweb.net\n
			Telephone : 254725547006\n
			Mobile : \n
			Fax : \n
			<p>
			We will activate your Login ID/Password within 24 hours. After activation of your account, you can use our website
			</p>
			\n
			Thanks & Regards.
			\n\n
			<p>
			tarclink\n
			P. O. Box 938\n
			Kilifi\n
			Phone: +254-041-525400\n
			E-Mail: jobs@kilifi.kemri-wellcome.org\n
			Website: http://www.kemri-wellcome.org\n
			</p>";
		if ((int) $results==1) sendemail(strip_tags($commentinfo),officialsemail,bcc,$email,"Account Registration");
		break;
	case "Edit":
		$userid=$_POST["userid"];
		$sql="UPDATE users SET fname=$fname,sname=$sname,loginname=$loginname,pass=$pass,email=$email,
				dateregistered=$dateregistered,`status`=$status,usercategory=$usercategory
			WHERE userid=$_POST[userid]";
		$results=query($sql,$conn);
		$msg[0]="Sorry user profile not updated";
		$msg[1]="User profile successfull updated";
		AddSuccess($results,$conn,$msg);
		break;
	case "Delete":
		$sql = "DELETE FROM users WHERE userid=$userid";
		break;
	case "Find":
		$sql = "SELECT * FROM users	WHERE userid=$userid";
		$results=query($sql,$conn);
		$user = fetch_object($results);
		break;
	}
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>tarclink - users registration</title>
<link href="css/main.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/epoch_styles.css"/>
<script language="JavaScript" src="js/highlight.js" type="text/javascript"></script>
<script type="text/javascript" src="js/formval.js"></script>
<script type="text/javascript" src="css/epoch_classes.js"></script>
<script type="text/javascript">
<!--
var request;
var dest;

function ConfirmPass(){
	if (document.forms.register.confpass.value!=document.forms.register.pass.value){
		alert("Passwords do not match!");
	}
};

function validateOnSubmit() {
	var elem;
    var errs=0;
	// execute all element validations in reverse order, so focus gets
    // set to the first one in error.
    if (!validateEmail (document.forms.register.email,'inf_email',true)) errs += 1;
	if (!validatePresent (document.forms.register.confpass,'inf_confpass')) errs += 1;
	if (!validatePresent (document.forms.register.pass,'inf_pass')) errs += 1;
	if (!validatePresent (document.forms.register.loginname,'inf_loginname')) errs += 1;
	if (!validatePresent (document.forms.register.fname,'inf_fname')) errs += 1;
	if (!validatePresent (document.forms.register.sname,'inf_sname')) errs += 1;

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
	loginname = document.getElementById('loginname').value;
	var str ='loginname='+loginname+'&button='+button;

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
<form action="register.php" method="post" name="register" id="register" enctype="multipart/form-data">
<div align="center">
<table align="center">
 <tr>
 <td align="left"><?php mainheader(); ?></td>
<td align="right">
   If you are already a user please <?php
          if($_GET["member"]=='A') echo "<a href='login.php?member=A'>Login Here!</a>";
		  if($_GET["member"]=='E') echo "<a href='login.php?member=E'>Login Here!</a>";
		  if($_GET["member"]=='D') echo "<a href='login.php?member=D'>Login Here!</a>";
		 ?>
 </td>
 </tr>
 <tr>
 <td colspan="2"><table border="0" align="center">
    <tr>
      <th scope="col" colspan="2"><?php
          if($_GET["member"]=='A') echo "<DIV align=center>Job Seeker Registration</DIV>";
		  if($_GET["member"]=='E') echo "<DIV align=center>Employer Registration</DIV>"
		 ?></th>
    </tr>
    <tr>
      <td colspan="2"><strong>LOGIN DETAILS</strong> <input type="hidden" name="id" value="<?php echo $user->id; ?>">
        <input type="hidden" name="member" value="<?php echo $_GET["member"]; ?>"></td>
      </tr>
    <tr>
      <td>Surname</td>
      <td>
        <input name="sname" type="text" id="sname" value="<?php echo $user->sname; ?>"/>
		<div id="inf_sname" class="warn">* </div>
      </td>
      </tr>
    <tr>
      <td>Middle Name </td>
      <td><input name="mname" type="text" id="mname" value="<?php echo $user->mname; ?>"/></td>
    </tr>
    <tr>
      <td>First Name </td>
      <td><input name="fname" type="text" id="fname" value="<?php echo $user->fname; ?>"/>
	  <div id="inf_fname" class="warn">* </div></td>
    </tr>
    <tr>
      <th colspan="2">Account Details</th>
    </tr>
    <tr>
      <td>Login name</td>
      <td>
        <input name="loginname" type="text" id="loginname" value="<?php echo $user->loginname; ?>" onblur="loadHTMLPost('ajaxfunctions.php','inf_loginname','CheckLoginname')"/><div id="inf_loginname" class="warn">*</div></td>
      </tr>
    <tr>
      <td>Password</td>
      <td>
        <input name="pass" type="password" id="pass" value="<?php echo $user->pass; ?>"/><div id="inf_pass" class="warn">* </div></td>
      </tr>
    <tr>
      <td>Confirm Password </td>
      <td>
        <input name="confpass" type="password" id="confpass" value="<?php echo $user->pass; ?>" onBlur="ConfirmPass()"/><div id="inf_confpass" class="warn">* </div></td>
      </tr>
    <tr>
      <td> Email</td>
      <td>
        <input name="email" type="text" id="email" value="<?php echo isset($_POST["email"]) ? $_POST["email"] : $user->email; ?>" width="200"/><div id="inf_email" class="warn">* </div> </td>
      </tr>
    <tr align="center">
      <td colspan="2"><input type="submit" name="submit" value="<?php echo isset($_GET["search"]) ? "Edit" : "Register"; ?>" onclick="return validateOnSubmit();"/>
		</td>
    </tr>
</table>

</td>
 <tr><td colspan="3" align="center"><?php footer(); ?></td></tr>
</table>
</div>
</form>
</body>
</html>
