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
	switch($_POST["submit"]){
	case "Add":
		break;
	case "Edit":
		break;
	case "Delete":
		$sql = "DELETE FROM applications WHERE id=$id";
		$results=query($sql,$conn);
		$msg[0]="Sorry job application not deleted";
		$msg[1]="Job application successfull deleted";
		AddSuccess($results,$conn,$msg);
		break;
	case "Find":
		$sql = "SELECT * FROM applications WHERE id=$id";
		$results=query($sql,$conn);
		$myapplication = fetch_object($results);
		break;
	}
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>tarclink - my taifa jobs</title>
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
	//dp_cal  = new Epoch('epoch_popup','popup',document.getElementById('dd_o_birth'));
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
	mem_id = document.getElementById('imem_id').value;
	var str ='mem_id='+mem_id+'&button='+button;
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
<form action="myjobs.php" method="post" name="myjobs" id="myjobs" enctype="multipart/form-data">
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
 <td colspan="3"><?php $conn=db_connect(HOST,USER,PASS,DB,PORT);
	$querystr="SELECT applications.id,applications.applicantid,applications.jobid,applications.dateapplied,
			applications.shortlisted,applicant.salutation,applicant.surname,applicant.mname,job.jobtitle,
			employer.organization,job.dateposted,job.dateclosing
		FROM applications
		Left Join job ON applications.jobid = job.jobid
		Left Join employer ON job.employerid = employer.employerid
		Left Join applicant ON applications.applicantid = applicant.applicantid
		WHERE applications.applicantid =  $_SESSION[userid]";
	$results=query($querystr,$conn);
	//check if data is returned
	echo "<table border=\"0\" width=\"100%\">";
	echo "<tr class=\"boldtext\"><td>Organization</td><td>Job Title</td><td>Date Applied</td><td>Closing date</td><td>Action</td></tr>";
	while ($myjobs = fetch_object($results)){
		//alternate row colour
		$j++;
		if($j%2==1){
			echo "<tr id=\"row$j\" onmouseover=\"javascript:setColor('$j')\" onmouseout=\"javascript:origColor('$j')\" bgcolor=\"#CCCCCC\">";
		}else{
			echo "<tr id=\"row$j\" onmouseover=\"javascript:setColor('$j')\" onmouseout=\"javascript:origColor('$j')\" bgcolor=\"#EEEEF8\">";
		}
			echo "<td align=\"left\"><input name=\"id\" type=\"hidden\" value=\"$myjobs->id\">$myjobs->organization</td>
				<td align=\"left\">$myjobs->jobtitle</td>
				<td align=\"left\">$myjobs->dateapplied</td>
				<td align=\"left\">$myjobs->dateclosing</td>
				<td align=\"left\"><a name=\"editexperience\" href=\"jobdetails.php?jobid=$myjobs->jobid\" target='_blank'>View job </a> |
				<a name=\"deleteexperience\" href=\"myjobs.php?search=$myjobs->id&action=Delete\" onClick=\"Javascript:return confirm('Are you sure you want Delete this Record?','Confirm Delete')\">Delete</a></td>
			</tr>";
	}
	echo "</table>";
?></td>
 <tr><td colspan="3" align="center"><?php footer(); ?></td></tr>
</table>
</div>
</form>
</body>
</html>
