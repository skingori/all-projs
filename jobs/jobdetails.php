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

if(isset($_POST["submit"])){
	$applicantid =(!empty($_SESSION["userid"])) ? $_SESSION["userid"] : 'NULL';
	$jobid = !empty($_POST["jobid"]) ? "'" . $_POST["jobid"] . "'" : 'NULL';
	$shortlisted =(!empty($_POST["pay"])) ? $_POST["pay"] : 'NULL';
	$employersemail = !empty($_POST["employersemail"]) ? "'" . $_POST["employersemail"] . "'" : 'NULL';
	switch($_POST["submit"]){
	case "Apply Online":
		$sql="INSERT INTO applications (applicantid,jobid,dateapplied,shortlisted)
			VALUES($applicantid,$jobid,now(),$shortlisted)";
		$results=query($sql,$conn);
		$msg[0]="Sorry your application has not been sent";
		$msg[1]="Job application successfull added";
		AddSuccess($results,$conn,$msg);

		//send mail to user and employer
		$commentinfo = "Your application has been forwarded to the employer";
		$email = $_SESSION["email"];
		sendemail($commentinfo,$employersemail,bcc,$email,"Job application");

		break;
	}
	$_GET["jobid"]=$_POST["jobid"]; //display the job again
}

$search = $_GET["jobid"];
$sql="SELECT job.jobid,job.employerid,jobcat.jobcategory,job.employeetype,job.city,job.countryid,job.jobtitle,
		job.summary,job.description,job.requirements,job.dateposted,job.dateclosing,job.pay,countries.country,employer.organization,
		employer.contact,employer.website,employer.telephone,employer.fax,employer.email
	FROM job
	Left Join countries ON job.countryid = countries.countryid
	Left Join employer ON job.employerid = employer.employerid
	Left Join jobcat ON job.jobcategory = jobcat.id
	WHERE job.jobid = $search";
$results=query($sql,$conn);
$jobs = fetch_object($results);
$today = getdate();
?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>tarclink - job details</title>
<script language="JavaScript" src="js/highlight.js" type="text/javascript"></script>
<link href="css/main.css" rel="stylesheet" type="text/css">
<?php headericon(); ?>
</head>
<body>
<form action="jobdetails.php" method="POST"  name="jobdetails" id="jobdetails" enctype="multipart/form-data">
<div align="left">
<table align="left">
 <tr>
<td colspan="3"><table border="0" align="left">
  <tr><td colspan="7"><input name="jobid" type="hidden" value="<?php echo $jobs->jobid; ?>">
    <input type="hidden" name="employersemail" value="<?php echo $jobs->email; ?>">
  <?php
  	echo "<h3>$jobs->jobtitle</h3>
		<span class=\"boldtext\">Category:-</span> $jobs->jobcategory <br>
		<span class=\"boldtext\">Location:-</span> $jobs->city <br>
		<span class=\"boldtext\">Country:-</span> $jobs->country <br>
		<span class=\"boldtext\">Organization Name:-</span> $jobs->organization <br><br>
		<span class=\"boldtext\">Summary</span><br>".
		stripslashes($jobs->summary)."<br><br>
		<span class=\"boldtext\">Descrption</span><br>".
		stripslashes($jobs->description)."<br><br>
		<span class=\"boldtext\">Requirements</span><br>".
		stripslashes($jobs->requirements)."<br><br>
		<span class=\"boldtext\">Contact Details</span><br>
		<span class=\"boldtext\">Contact Person :</span> $jobs->contact<br>
		<span class=\"boldtext\">Telephone :</span> $jobs->telephone<br>
		<span class=\"boldtext\">Fax :</span> $jobs->fax<br>
		<span class=\"boldtext\">E-mail :</span> $jobs->email<br><br>
		To apply online, make sure you are logged in :<br>";
		if(isset($_SESSION["userid"]) && $_SESSION["usercategory"]!=='E') echo "<span class=\"boldtext\"><input type=\"submit\" name=\"submit\" value=\"Apply Online\"></span><br>";
		echo "<span class=\"boldtext\">Website :</span> $jobs->website<br>
		Reference :<br><br>".
		"<span class=\"boldtext\">Posted date: </span>" . dateconvert($jobs->dateposted,2) . "<span class=\"boldtext\">- Closing date: </span>" . dateconvert($jobs->dateclosing,2);
	  ?>
	</td>
  </tr>
 <tr><td colspan="7" align="center"><?php footer(); ?></td>
 </tr>
</table>
</table>
</div>
</form>
</body>
</html>
