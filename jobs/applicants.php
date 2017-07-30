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

//check if user is logged in
SignedIn();

//check if user has clicked on logout button
if(isset($_POST["submit"]) && $_POST["submit"]=='Logout') LogOut();

if(isset($_GET["search"]) && !empty($_GET["search"])){
	$id=$_GET["search"];
	$_POST["submit"]=$_GET["action"];
}

if(isset($_POST["submit"])){
	switch($_POST["submit"]){
	case "Delete":
		$sql = "DELETE FROM applications WHERE id=$id";
		$results=query($sql,$conn);
		$msg[0]="Job applications not deleted";
		$msg[1]="Job applications successfull deleted";
		AddSuccess($results,$conn,$msg);
		break;
	case "Find":
		$sql = "SELECT * FROM applications WHERE id=$id";
		$results=query($sql,$conn);
		$job = fetch_object($results);
		break;
	}
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>By Samson</title>
<script language="JavaScript" src="js/highlight.js" type="text/javascript"></script>
<link href="css/main.css" rel="stylesheet" type="text/css">
<?php headericon(); ?>
</head>
<body>
<form action="applicants.php" method="POST"  name="applicants" id="applicants" enctype="multipart/form-data">
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
 <td valign="top" align="left"><?php leftmenu(); ?></td>
 <td colspan="2" valign="top" align="left"><table border="0" width="100%">
    <tr>
      <th colspan="2" bgcolor="#CCCCCC"><strong>MY JOB APPLICANTS</strong></th>
    </tr>
    <tr>
      <td align="center"><?php $conn=db_connect(HOST,USER,PASS,DB,PORT);
	$querystr="SELECT applications.id,applications.applicantid,applications.jobid,applications.dateapplied,
			applications.shortlisted,concat_ws(' ',applicant.salutation,applicant.fname,applicant.mname,applicant.surname) as applicant,job.jobtitle,
			employer.organization,job.dateposted,job.dateclosing
		FROM applications
		Left Join job ON applications.jobid = job.jobid
		Left Join employer ON job.employerid = employer.employerid
		Left Join applicant ON applications.applicantid = applicant.applicantid
		WHERE employer.employerid =  $_SESSION[userid]";
	$results=query($querystr,$conn);
	//check if data is returned
	echo "<table border=\"0\" width=\"100%\">";
	echo "<tr class=\"boldtext\"><td>Applicant</td><td>Job Title</td><td>Date Applied</td><td>Closing date</td><td>Action</td></tr>";
	while ($myjobs = fetch_object($results)){
		//alternate row colour
		$j++;
		if($j%2==1){
			echo "<tr id=\"row$j\" onmouseover=\"javascript:setColor('$j')\" onmouseout=\"javascript:origColor('$j')\" bgcolor=\"#CCCCCC\">";
		}else{
			echo "<tr id=\"row$j\" onmouseover=\"javascript:setColor('$j')\" onmouseout=\"javascript:origColor('$j')\" bgcolor=\"#EEEEF8\">";
		}
			echo "<td align=\"left\"><input name=\"id\" type=\"hidden\" value=\"$myjobs->id\">$myjobs->applicant</td>
				<td align=\"left\">$myjobs->jobtitle</td>
				<td align=\"left\">$myjobs->dateapplied</td>
				<td align=\"left\">$myjobs->dateclosing</td>
				<td align=\"left\"><a name=\"editexperience\" href=\"viewcv.php?applicant=$myjobs->applicantid\" target='_blank'>View CV </a> |
				<a name=\"deleteexperience\" href=\"applicants.php?search=$myjobs->id&action=Delete\" onClick=\"Javascript:return confirm('Are you sure you want Delete this Record?','Confirm Delete')\">Delete</a></td>
			</tr>";
	}
	echo "</table>";
?></td>
    </tr>

</table></td>
 <tr><td colspan="3" align="center"><?php footer(); ?></td></tr>
</table>
</div>
</form>
</body>
</html>
