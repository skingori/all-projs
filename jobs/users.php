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
if(isset($_POST["Submit"]) && $_POST["Submit"]=='Logout') LogOut();

if(isset($_GET["action"])){
	switch($_GET["action"]){
	case "Activate":
		$sql="UPDATE users SET status='A' WHERE userid=$_GET[id]";
		$results=query($sql,$conn);
		$msg[0]="Account not activated, please contact support team.";
		$msg[1]="Account successfull activated";
		AddSuccess($results,$conn,$msg);

		//send mail to user and employer
		$commentinfo = "Your account has been activated.<br />  Please follow the link http://www.kemri-wellcome.org to log in to your account";
		$email = !empty($_POST["email"]) ? "'" . $_POST["email"] . "'" : 'NULL';
		sendemail($commentinfo,'',bcc,$email,"Job application");
		break;
	case "Changepass":
		$sql="UPDATE users SET status='A' WHERE pass=md5[id]";
		$results=query($sql,$conn);
		$msg[0]="Account not activated, please contact support team.";
		$msg[1]="Account successfull activated";
		AddSuccess($results,$conn,$msg);

		//send mail to user and employer
		$commentinfo = "Your account has been activated.<br />  Please follow the link http://www.kemri-wellcome.org to log in to your account";
		$email = !empty($_POST["email"]) ? "'" . $_POST["email"] . "'" : 'NULL';
		sendemail($commentinfo,'',bcc,$email,"Job application");
		break;
	case "Delete":
		$sql="DELETE FROM users WHERE userid=$_GET[search]";
		$results=query($sql,$conn);
		$msg[0]="Account not deleted.";
		$msg[1]="Account successfull deleted";
		AddSuccess($results,$conn,$msg);

		break;
	}
	$_GET["jobid"]=$_POST["jobid"]; //display the job again
}

?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>tarclink - users</title>
<script language="JavaScript" src="js/highlight.js" type="text/javascript"></script>
<link href="css/main.css" rel="stylesheet" type="text/css">
<?php headericon(); ?>
</head>
<body>
<form action="users.php" method="POST"  name="users" id="users" enctype="multipart/form-data">
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
      <th colspan="2" bgcolor="#CCCCCC"><strong>USERS</strong></th>
    </tr>
    <tr>
      <td align="center">
        <label><input type="radio" name="users" value="U">Users</label>
		<label><input type="radio" name="users" value="S">Job Seekers</label>
        <label><input type="radio" name="users" value="R">Job Recruiters</label>
        <input type="submit" name="Submit" value="Submit">
	</td>
    </tr>
    <tr>
      <td align="center">
	  <?php $conn=db_connect(HOST,USER,PASS,DB,PORT);
		if(isset($_POST["Submit"])){
			switch($_POST["users"]){
			case 'U':
				$querystr="SELECT userid,concat_ws(' ',fname,mname,sname) as taifauser,loginname,email,dateregistered,admin,`status`,usercategory
						FROM users";
				$results=query($querystr,$conn);
					//check if data is returned
					echo "<table border=\"0\" width=\"100%\">";
					echo "<tr class=\"boldtext\"><td>User</td><td>Date Registered</td><td>Status</td><td>Admin</td><td>User category</td><td>Action</td></tr>";
					while ($users = fetch_object($results)){
						//alternate row colour
						$j++;
						if($j%2==1){
							echo "<tr id=\"row$j\" onmouseover=\"javascript:setColor('$j')\" onmouseout=\"javascript:origColor('$j')\" bgcolor=\"#CCCCCC\">";
						}else{
							echo "<tr id=\"row$j\" onmouseover=\"javascript:setColor('$j')\" onmouseout=\"javascript:origColor('$j')\" bgcolor=\"#EEEEF8\">";
						}
							echo "<td align=\"left\"><input name=\"id\" type=\"hidden\" value=\"$users->userid\"><input name=\"email\" type=\"hidden\" value=\"$users->email\">$users->taifauser</td>
								<td align=\"left\">$users->dateregistered</td>
								<td align=\"left\">$users->status</td>
								<td align=\"left\">$users->admin</td>
								<td align=\"left\">$users->usercategory</td>
								<td align=\"left\">
								<a name=\"activateuser\" href=\"users.php?id=$users->userid&action=Activate\">Activate</a> |
								<a name=\"activateuser\" href=\"users.php?id=$users->userid&action=Changepass\">Reset Password</a> |
								<a name=\"deleteuser\" href=\"users.php?search=$users->userid&action=Delete\" onClick=\"Javascript:return confirm('Are you sure you want Delete this Record?','Confirm Delete')\">Delete</a></td>
							</tr>";
					}
					echo "</table>";
			break;
		case 'S':
			$querystr="SELECT applications.id,applications.applicantid,applications.jobid,applications.dateapplied,
					applications.shortlisted,concat_ws(' ',applicant.salutation,applicant.fname,applicant.mname,applicant.surname) as applicant,job.jobtitle,
					employer.organization,job.dateposted,job.dateclosing
				FROM applications
				Left Join job ON applications.jobid = job.jobid
				Left Join employer ON job.employerid = employer.employerid
				Left Join applicant ON applications.applicantid = applicant.applicantid";
			$results=query($querystr,$conn);
			//check if data is returned
			echo "<table border=\"0\" width=\"100%\">";
			echo "<tr class=\"boldtext\"><td>Applicant</td><td>Job Title</td><td>Organization</td><td>Date Applied</td><td>Closing date</td><td>Action</td></tr>";
			while ($myjobs = fetch_object($results)){
				//alternate row colour
				$j++;
				if($j%2==1){
					echo "<tr id=\"row$j\" onmouseover=\"javascript:setColor('$j')\" onmouseout=\"javascript:origColor('$j')\" bgcolor=\"#CCCCCC\">";
				}else{
					echo "<tr id=\"row$j\" onmouseover=\"javascript:setColor('$j')\" onmouseout=\"javascript:origColor('$j')\" bgcolor=\"#EEEEF8\">";
				}
					echo "<td align=\"left\"><input name=\"id\" type=\"hidden\" value=\"$myjobs->id\">$myjobs->applicant</td>
						<td align=\"left\"><a name=\"viewjob\" href=\"jobdetails.php?jobid=$myjobs->jobid\" target='_blank'>$myjobs->jobtitle</a></td>
						<td align=\"left\">$myjobs->organization</td>
						<td align=\"left\">$myjobs->dateapplied</td>
						<td align=\"left\">$myjobs->dateclosing</td>
						<td align=\"left\"><a name=\"editexperience\" href=\"viewcv.php?applicant=$myjobs->applicantid\" target='_blank'>View CV </a> |
						<a name=\"deleteapplication\" href=\"myjobs.php?search=$myjobs->id&action=Delete\" title=\"remove job seekers application\">Delete</a></td>
					</tr>";
			}
			echo "</table>";
			break;
		case 'R':
			$querystr="SELECT employer.id,employer.employerid,employer.organization,employer.contact,employer.jobtitle,
					employer.telephone,employer.fax,employer.extension,employer.email,employer.box,employer.town,
					employer.zip_postal,employer.website,countries.country
				FROM employer
				Left Join countries ON employer.countryid = countries.countryid";
			$results=query($querystr,$conn);
				//check if data is returned
				echo "<table border=\"0\" width=\"100%\">";
				echo "<tr class=\"boldtext\"><td>Contact</td><td>Organization</td><td>Telephone</td><td>Email</td><td>Town</td><td>Country</td><td>Website</td><td>Action</td></tr>";
				while ($users = fetch_object($results)){
					//alternate row colour
					$j++;
					if($j%2==1){
						echo "<tr id=\"row$j\" onmouseover=\"javascript:setColor('$j')\" onmouseout=\"javascript:origColor('$j')\" bgcolor=\"#CCCCCC\">";
					}else{
						echo "<tr id=\"row$j\" onmouseover=\"javascript:setColor('$j')\" onmouseout=\"javascript:origColor('$j')\" bgcolor=\"#EEEEF8\">";
					}
						echo "<td align=\"left\"><input name=\"id\" type=\"hidden\" value=\"$users->id\">$users->contact</td>
							<td align=\"left\">$users->organization</td>
							<td align=\"left\">$users->telephone</td>
							<td align=\"left\">$users->email</td>
							<td align=\"left\">$users->town</td>
							<td align=\"left\">$users->country</td>
							<td align=\"left\">$users->website</td>
							<td align=\"left\"><a name=\"edituser\" href=\"employer.php?search=$users->employerid\">Employers Details</a> |
							<a name=\"deleteuser\" href=\"users.php?search=$users->userid&action=Delete\">Delete</a></td>
						</tr>";
				}
				echo "</table>";
			break;
		}
	}
	?>
	</td>
    </tr>

</table></td>
 <tr><td colspan="3" align="center"><?php footer(); ?></td></tr>
</table>
</div>
</form>
</body>
</html>
