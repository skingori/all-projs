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

if(isset($_POST["submit"]) && $_POST["submit"]=='Search'){
	//country
	if(isset($_POST["countryid"]) && trim($_POST["countryid"])!=='') $country = "job.countryid=$_POST[countryid] OR";

	//career level
	//if(isset($_POST["carrierlevelid"]) && trim($_POST["carrierlevelid"])!=='') $country = "job.countryid=$_POST[carrierlevelid] OR";

	//jobcategory
	if(isset($_POST["jobcategory"]) && trim($_POST["jobcategory"])!=='') $jobcategory = "job.jobcategory=$_POST[jobcategory] OR";

	//employeetype
	if(isset($_POST["employeetype"]) && trim($_POST["employeetype"])!=='') $employeetype = "job.employeetype='$_POST[employeetype]' OR";

	//creteria for search on the jobtitle, summary, description, requirements
	if(isset($_POST["keyword"]) && trim($_POST["keyword"])!=='') $keyword="(job.jobtitle LIKE '%$_POST[keyword]%' OR job.summary LIKE '%$_POST[keyword]%' OR job.description LIKE '%$_POST[keyword]%' OR job.requirements LIKE '%$_POST[keyword]%' OR employer.organization LIKE '%$_POST[keyword]%')";
	//" AND job.dateclosing <= current_date()";

	$where = "WHERE $country $jobcategory $employeetype $keyword";
	/*$endor = substr_count ($where, '=');
	for ($i = 1; $i <= $endor; $i++){
    	echo $i;
		//$where = "$country $jobcategory $employeetype $keyword";
	}
	$where = "WHERE " . $where;*/
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>tarclink - vacancy</title>
<script language="JavaScript" src="js/highlight.js" type="text/javascript"></script>
<link href="css/main.css" rel="stylesheet" type="text/css">
<?php headericon(); ?>
</head>
<body>
<form action="vacancies.php" method="POST"  name="vacancies" id="vacancies" enctype="multipart/form-data">
<div align="center">
<table>
 <tr align="right">
   <td colspan="2"><?php mainheader(); ?></td>
 </tr>
 <tr>
   <th colspan="2"><?php loginheader(); ?></th>
 </tr>
 <tr align="center" bgcolor="#EEEEF8">
	<td align="left"><a href="login.php?member=D">Administrator</a></td>
   <td align="right"><a href="login.php?member=A">Applicant Login/Register</a> | <a href="login.php?member=E">Employer Login/Register</a></td>
 </tr>
 <tr align="left"><td colspan="2"><table border="1" cellpadding="1" align="center">
   <tr>
     <td>Keyword</td>
     <td><input type="text" name="keyword"><br>
       <label><input type="radio" name="opgkeword" value="1">All words</label>
       <label><input type="radio" name="opgkeword" value="2">Any words</label>
       <label><input type="radio" name="opgkeword" value="3">Exact phrase</label>
	</td>
   </tr>
   <tr>
     <td>Country</td>
     <td><select name="countryid" id="countryid">
       <option value="">--select country--</option>
       <?php populate_select("countries","countryid","country",$job->countryid); ?>
     </select></td>
   </tr>
   <tr>
     <td>Career Level </td>
     <td><select name="carrierlevelid">
       <option value="">--select career level--</option>
       <?php populate_select("careerlevel","careerid","careerlevel",$objective->carrierlevelid);?>
     </select></td>
   </tr>
   <tr>
     <td>Job Category </td>
     <td><select name="jobcategory" id="jobcategory">
       <option value="">--select job category--</option>
       <?php populate_select("jobcat","id","jobcategory",$job->jobcategory); ?>
       <option value="0">Other</option>
     </select></td>
   </tr>
   <tr>
     <td>Job Type </td>
     <td><select name="employeetype" id="employeetype">
       <option value="">--select employment type--</option>
       <?php populate_select("emptype","employmenttype","employmenttype",$job->employeetype); ?>
     </select></td>
   </tr>
   <tr>
     <td>&nbsp;</td>
     <td><input type="submit" name="submit" value="Search">
       <input type="reset" name="Reset" value="Reset"></td>
   </tr>
 </table></td></tr>
 <tr>
<td colspan="2"><table border="0" align="center">
  <tr><td colspan="7">
  <?php
  		if(isset($_GET["list"])) $_SESSION["list"]=$_GET["list"];
		switch($_SESSION["list"]){
		case 'vacancies':
			//if($_SESSION["list"]=='memberslist') memberslist();
			vacancies($where);
			break;
		default:
			vacancies($where);
			break;
		}
   ?>
	</td>
  </tr>
 <tr><td align="center"><?php footer(); ?></td>
 </tr>
</table>
</table>
</div>
</form>
</body>
</html>
