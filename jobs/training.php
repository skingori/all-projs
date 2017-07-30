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
SignedIn();

//check if user has clicked on logout button
if(isset($_POST["submit"]) && $_POST["submit"]=='Logout') LogOut();

if(isset($_GET["search"]) && !empty($_GET["search"])){
	//have this as a search function
	$id=$_GET["search"];
	$_POST["submit"]=$_GET["action"];
}


if(isset($_POST["submit"])){
	if($_POST["submit"]=="Save & add another" || $_POST["submit"]=="Update & Continue"){
		$id =(!empty($_POST["id"])) ? $_POST["id"] : 'NULL';
		$applicantid =(!empty($_SESSION["userid"])) ? $_SESSION["userid"] : 'NULL';
		$trainingtitle = !empty($_POST["trainingtitle"]) ? "'" . $_POST["trainingtitle"] . "'" : 'NULL';
		$provider = !empty($_POST["provider"]) ? "'" . $_POST["provider"] . "'" : 'NULL';
		$startdate = !empty($_POST["startdate"]) ? "'" . dateconvert($_POST["startdate"],1) . "'" : 'NULL';
		$enddate = !empty($_POST["enddate"]) ? "'" . dateconvert($_POST["enddate"],1) . "'" : 'NULL';
		$description = !empty($_POST["description"]) ? "'" . $_POST["description"] . "'" : 'NULL';
	}
	switch($_POST["submit"]){
	case "Save & add another":
		$sql="INSERT INTO training (applicantid,trainingtitle,provider,startdate,enddate,description)
			VALUES($applicantid,$trainingtitle,$provider,$startdate,$enddate,$description)";
		$results=query($sql,$conn);
		$msg[0]="Sorry training details not added";
		$msg[1]="Training details successfull added";
		AddSuccess($results,$conn,$msg);
		break;
	case "Update & Continue":
		$sql="UPDATE training SET applicantid=$applicantid,trainingtitle=$trainingtitle,provider=$provider,startdate=$startdate,enddate=$enddate,description=$description WHERE id=$_POST[id]";
		$results=query($sql,$conn);
		$msg[0]="Sorry training details not updated";
		$msg[1]="Training details successfull updated";
		AddSuccess($results,$conn,$msg);
		break;
	case "Delete":
		$sql = "DELETE FROM training WHERE id=$id";
		$results=query($sql,$conn);
		$msg[0]="Sorry training details not deleted";
		$msg[1]="Training details successfull deleted";
		AddSuccess($results,$conn,$msg);
		break;
	case "Find":
		$sql = "SELECT * FROM training WHERE id=$id";
		$results=query($sql,$conn);
		$training = fetch_object($results);
		break;
	case "Skip>>":
		echo "<meta http-equiv=\"Refresh\" content=\"0;url=./publications.php\">";
		break;
	case "<<Back":
		echo "<meta http-equiv=\"Refresh\" content=\"0;url=./education.php\">";
		break;
	}
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>tarclink - training/workshops</title>
<link href="css/main.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/epoch_styles.css"/>
<?php headericon(); ?>
<script language="JavaScript" src="js/highlight.js" type="text/javascript"></script>
<script type="text/javascript" src="js/formval.js"></script>
<script type="text/javascript" src="css/epoch_classes.js"></script>
<script type="text/javascript">
<!--
var request;
var dest;
var dp_cal;

window.onload = function () {
	dp_cal  = new Epoch('epoch_popup','popup',document.getElementById('startdate'));
	dp_cal  = new Epoch('epoch_popup','popup',document.getElementById('enddate'));
};

function validateOnSubmit() {
	var elem;
    var errs=0;
	// execute all element validations in reverse order, so focus gets
    // set to the first one in error.
	if (!validatePresent (document.forms.training.enddate,'inf_enddate')) errs += 1;
	if (!validatePresent (document.forms.training.startdate,'inf_startdate')) errs += 1;
	if (!validatePresent (document.forms.training.provider,'inf_provider')) errs += 1;
	if (!validatePresent (document.forms.training.trainingtitle,'inf_trainingtitle')) errs += 1;

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
	var str ='button='+button;
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
<script language="JavaScript" type="text/javascript" src="openwysiwyg/wysiwyg.js"></script>
</head>
<body bgcolor="#FFFFFF">
<form action="training.php" method="post" name="training" id="training" enctype="multipart/form-data">
<div align="center">
<table>
 <tr>
   <td colspan="3" align="right"><?php mainheader(); ?></td>
 </tr>
 <tr>
   <th><?php loginheader(); ?></th>
   <th colspan="2"><?php profileheader(); ?>
     <input type="hidden" name="applicantid" value="<?php echo $training->applicantid; ?>"></th>
 </tr>
 <tr>
 <td valign="top" align="left"><?php leftmenu(); ?></td>
 <td colspan="2" valign="top" align="left"><table border="0" width="100%">
    <tr>
      <th colspan="3" bgcolor="#CCCCCC"><strong>TRAININGS &amp; WORKSHOPS</strong></th>
    </tr>
    <tr>
      <td colspan="2" align="center">
<?php $conn=db_connect(HOST,USER,PASS,DB,PORT);
	$querystr="SELECT id,applicantid,trainingtitle,startdate,enddate FROM training	WHERE training.applicantid =  $_SESSION[userid]";
	$results=query($querystr,$conn);
	//check if data is returned
	echo "<table border=\"0\" width=\"100%\">";
	echo "<tr class=\"boldtext\"><td>Title</td><td>Start Date</td><td>End Date</td><td>Action</td></tr>";
	while ($traindetails = fetch_object($results)){
		//alternate row colour
		$j++;
		if($j%2==1){
			echo "<tr id=\"row$j\" onmouseover=\"javascript:setColor('$j')\" onmouseout=\"javascript:origColor('$j')\" bgcolor=\"#CCCCCC\">";
		}else{
			echo "<tr id=\"row$j\" onmouseover=\"javascript:setColor('$j')\" onmouseout=\"javascript:origColor('$j')\" bgcolor=\"#EEEEF8\">";
		}
			echo "<td align=\"left\"><input name=\"id\" type=\"hidden\" value=\"$traindetails->id\">$traindetails->trainingtitle</td>
				<td align=\"left\">$traindetails->startdate</td>
				<td align=\"left\">$traindetails->enddate</td>
				<td align=\"left\"><a name=\"editexperience\" href=\"training.php?search=$traindetails->id&action=Find\">Edit </a>|
				<a name=\"deleteexperience\" href=\"training.php?search=$traindetails->id&action=Delete\" onClick=\"Javascript:return confirm('Are you sure you want Delete this Record?','Confirm Delete')\">Delete</a></td>
			</tr>";
	}
	echo "</table>";
?></td>
    </tr>
    <tr>
      <td colspan="2"><em>Fields marked by <span class="warn">*</span> are required fields and must be filled in.</em></td>
    </tr>
    <tr>
      <td>Training Title</td>
      <td><input name="trainingtitle" type="text" id="trainingtitle" value="<?php echo $training->trainingtitle; ?>"/>
        <div id="inf_trainingtitle" class="warn">* </div></td>
    </tr>
    <tr>
      <td>Training Provider/Institution </td>
      <td><input name="provider" type="text" id="provider" value="<?php echo $training->provider; ?>"/>
        <div id="inf_provider" class="warn">* </div></td>
    </tr>
    <tr>
      <td>Start Date </td>
      <td><input name="startdate" type="text" id="startdate" value="<?php echo dateconvert($training->startdate,2); ?>"/>
        <div id="inf_startdate" class="warn">* </div></td>
    </tr>
    <tr>
      <td>End Date </td>
      <td><input name="enddate" type="text" id="enddate" value="<?php echo dateconvert($training->enddate,2); ?>"/>
        <div id="inf_enddate" class="warn">* </div></td>
    </tr>
    <tr>
      <td>Brief Description </td>
      <td>
	  <textarea name="description" id="description" cols="45" rows="8"><?php echo $training->description; ?></textarea>
	  </td>
    </tr>
    <tr align="center">
      <td colspan="2"><input type="submit" name="submit" value="<<Back">
        <input type="submit" name="submit" value="<?php echo $_GET["action"]=="Find" ? "Update & Continue" : "Save & add another"; ?>" onclick="return validateOnSubmit();"/>
        <input type="submit" name="submit" value="Skip>>" />
		</td>
    </tr>

</table></td>
 <tr><td colspan="3" align="center"><?php footer(); ?></td></tr>
</table>
</div>
</form>
</body>
</html>
