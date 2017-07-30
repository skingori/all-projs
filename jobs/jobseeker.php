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

//check if user is logged in
//SignedIn();

//check if user has clicked on logout button
if(isset($_POST["submit"]) && $_POST["submit"]=='Logout') LogOut();

if(isset($_GET["search"]) && !empty($_GET["search"])){
	//have this as a search function
	$userid=$_GET["search"];
	$_POST["imem_id"] = $_GET["search"];
	$_POST["userid"] = $_GET["search"];
	$_POST["submit"]="Find";
}

if(isset($_POST["submit"])){
	if($_POST["submit"]=="Add" || $_POST["submit"]=="Edit"){
		$iid_no =(!empty($_POST["iid_no"])) ? $_POST["iid_no"] : 'NULL';
		$userid =$_POST["userid"];
		$user = !empty($_POST["user"]) ? "'" . $_POST["user"] . "'" : 'NULL';
		$fname = !empty($_POST["fname"]) ? "'" . $_POST["fname"] . "'" : 'NULL';
		$sname = !empty($_POST["sname"]) ? "'" . $_POST["sname"] . "'" : 'NULL';
		// here we encrypt the password and add slashes if needed
		$pass = "'" . md5($_POST['pass']) . "'";
		$loginname = "'" . $_POST['loginname'] . "'";
		if (!get_magic_quotes_gpc()) {
			$pass = addslashes($_POST['pass']);
			$loginname = "'" . addslashes($_POST['loginname']) . "'";
		}

		$phone = !empty($_POST["phone"]) ? "'" . $_POST["phone"] . "'" : 'NULL';
		$mobile = !empty($_POST["mobile"]) ? "'" . $_POST["mobile"] . "'" : 'NULL';
		$fax = !empty($_POST["fax"]) ? "'" . $_POST["fax"] . "'" : 'NULL';
		$email = "'" . $_POST["email"] . "'";
		$dateregistered = !empty($_POST["dateregistered"]) ? "'" . $_POST["dateregistered"] . "'" : 'NULL';
		$countrycode = !empty($_POST["countrycode"]) ? "'" . $_POST["countrycode"] . "'" : 'NULL';
		$admin = !empty($_POST["admin"]) ? "'" . $_POST["admin"] . "'" : 'NULL';
		$initials = !empty($_POST["initials"]) ? "'" . $_POST["initials"] . "'" : 'NULL';
		$status = !empty($_POST["status"]) ? "'" . $_POST["status"] . "'" : 'NULL';
		$msg = GetUser();
		if(isset($msg)){
			echo $msg;
			unset($_POST["submit"]);
		}
		//$sql = "SELECT userid,fname,sname,loginname,pass,phone,mobile,fax,email,dateregistered,countrycode,admin,initials,`status` FROM users";
	}

	switch($_POST["submit"]){
	case "Add":
		$sql="INSERT INTO users (iid_no,fname,sname,loginname,pass,phone,mobile,fax,email,dateregistered,countrycode,admin,initials,`status`)
				VALUES($iid_no,$fname,$sname,$loginname,$pass,$phone,$mobile,$fax,$email,now(),$countrycode,$admin,$initials,$status)";
		$results=query($sql,$conn);
		$msg[0]="Sorry account not created";
		$msg[1]="Thank you, you have registered - you may now <a href=\"index.php\">Click here to login</a>";
		AddSuccess($results,$conn,$msg);
		$commentinfo = "Thank you for opening an account with us. <br>Your user loginname is $loginname.  Please wait for 24 hours for you account to be activated.";
		//if ((int) $results==0) sendemail($commentinfo,supportemail,bcc,$email,"Account Registration");
		break;
	case "Edit":
		$userid=$_POST["userid"];
		$sql="UPDATE users SET iid_no=$iid_no,fname=$fname,sname=$sname,loginname=$loginname,pass=$pass,phone=$phone,mobile=$mobile,fax=$fax,email=$email,
				dateregistered=$dateregistered,countrycode=$countrycode,admin=$admin,initials=$initials,`status`=$status
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
		$userid=$_POST["imem_id"];
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
<title>tarclink - users</title>
<link href="css/main.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/epoch_styles.css"/>
<script language="JavaScript" src="js/highlight.js" type="text/javascript"></script>
<script type="text/javascript" src="js/formval.js"></script>
<script type="text/javascript" src="css/epoch_classes.js"></script>
<script type="text/javascript">
<!--
var request;
var dest;
var dp_cal;

window.onload = function () {
	dp_cal  = new Epoch('epoch_popup','popup',document.getElementById('dd_o_birth'));
};

function validateOnSubmit() {
	var elem;
    var errs=0;
	// execute all element validations in reverse order, so focus gets
    // set to the first one in error.
    if (!validateEmail (document.forms.jobseeker.email,'inf_email',true)) errs += 1;
	if (!validatePresent (document.forms.jobseeker.mobile,'inf_mobile')) errs += 1;
	if (!validatePresent (document.forms.jobseeker.confpass,'inf_confpass')) errs += 1;
	if (!validatePresent (document.forms.jobseeker.pass,'inf_pass')) errs += 1;
	if (!validatePresent (document.forms.jobseeker.loginname,'inf_loginname')) errs += 1;
	if (!validatePresent (document.forms.jobseeker.iid_no,'inf_iid_no')) errs += 1;

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
<form action="jobseeker.php" method="post" name="jobseeker" id="jobseeker" enctype="multipart/form-data">
<div align="center">
<table align="center">
 <tr align="center"><td colspan="3">
 <?php
	$_SESSION["list"]='memberslist';
 ?>
 </td></tr>
 <tr>
 <td valign="top"><?php //mainheader(); ?></td>
 <td colspan="2"><table border="0" align="center">
    <tr>
      <th scope="col" colspan="2">Our jobs registration </th>
    </tr>
    <tr>
      <td colspan="2"><strong>LOGIN DETAILS</strong> </td>
      </tr>
    <tr>
      <td>National ID. No.
      <input type="hidden" name="id" value="<?php echo $user->id; ?>">      </td>
      <td>
        <input name="iid_no" type="text" id="iid_no" value="<?php echo isset($_POST["iid_no"]) ? $_POST["iid_no"] : $user->iid_no; ?>" onChange="validatePresent (document.forms.jobseeker.iid_no,'inf_iid_no')" onblur="loadHTMLPost('ajaxfunctions.php','mem_inf','GetMem')"/>
        <div id="inf_iid_no" class="warn">* </div></td>
    </tr>
    <tr>
      <td>Names        </td>
      <td><div id="mem_inf" class="warn"><?php echo isset($_POST["iid_no"]) ? GetMember($_POST["iid_no"]) : GetMember($user->iid_no); ?></div></td>
      </tr>
    <tr>
      <td>Login name</td>
      <td>
        <input name="loginname" type="text" id="loginname" value="<?php echo $user->loginname; ?>"/><div id="inf_loginname" class="warn">*</div></td>
      </tr>
    <tr>
      <td>Password</td>
      <td>
        <input name="pass" type="password" id="pass" value="<?php echo $user->pass; ?>"/><div id="inf_pass" class="warn">* </div></td>
      </tr>
    <tr>
      <td>Confirm Password </td>
      <td>
        <input name="confpass" type="password" id="confpass" value="<?php echo $user->pass; ?>"/><div id="inf_confpass" class="warn">* </div></td>
      </tr>
    <tr>
      <td>Mobile Number </td>
      <td>
        <input name="mobile" type="text" id="mobile" value="<?php echo isset($_POST["mobile"]) ? $_POST["mobile"] : $user->mobile; ?>"/><div id="inf_mobile" class="warn">* </div></td>
      </tr>
    <tr>
      <td> Email</td>
      <td>
        <input name="email" type="text" id="email" value="<?php echo isset($_POST["email"]) ? $_POST["email"] : $user->email; ?>" width="200"/><div id="inf_email" class="warn">* </div> </td>
      </tr>
    <tr align="center">
      <td colspan="2"><input type="submit" name="submit" value="<?php echo isset($_GET["search"]) ? "Edit" : "Add"; ?>" onclick="return validateOnSubmit();"/>
        <input type="submit" name="submit" value="Delete" />
        <input type="submit" name="submit" value="Find"/>
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

<!--
Dear Mr. Tony Iha,



We thank you very much to join us as a member at our website http://www.wise.vc. Your Login ID & Password and Company Information given below :

-------------------------------------------

Login ID : tkazungu
Password : metons

Contact Details :

Company :
Name : Mr. Tony Iha
Address : P. O. Box 938,
Kilifi-80108
Kenya
Email : tiha@taifaweb.net
Telephone : 254725547006
Mobile :
Fax :
Port Name : Mombasa
Trade Term : CIF


We will activate your Login ID/Password within 24 hours. After activation of your account, you can use our website


Thanks & Regards.

Mr. Keizo Yamada
Wise Trading Inc.
1-6-5, SHIBA-DAIMON Bld
Shibadaimon Minato-Ku
105-0012 Japan
Phone: +81-3-5776-7220
Fax: +81-3-5776-7226
E-Mail: yamada@wise.vc
Website: http://www.wise.vc

-->
