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

if(isset($_POST["submit"]) && $_POST["submit"]=='Search'){

	if(isset($_POST["countryid"]) && trim($_POST["countryid"])!=='') $country = "job.countryid=$_POST[countryid] OR";

	//creteria for search on the jobtitle, summary, description, requirements
	if(isset($_POST["keyword"]) && trim($_POST["keyword"])!=='') $keyword="(job.jobtitle LIKE '%$_POST[keyword]%' OR job.summary LIKE '%$_POST[keyword]%' OR job.description LIKE '%$_POST[keyword]%' OR job.requirements LIKE '%$_POST[keyword]%' OR employer.organization LIKE '%$_POST[keyword]%')";
	//" AND job.dateclosing <= current_date()";
	$where = "WHERE $country $keyword";
}
?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>tarclink - job seekers recruiters home site</title>
<script language="JavaScript" src="js/highlight.js" type="text/javascript"></script>
<link href="css/main.css" rel="stylesheet" type="text/css">
<?php headericon(); ?>
</head>
<body>
<form action="index.php" method="POST"  name="index" id="index" enctype="multipart/form-data">
<div align="center">
<table>
 <tr align="center">
   <td colspan="3" align="right"><a href="index.php"> HOME</a> | <a href="vacancies.php">VACANCIES</a></td>
 </tr>
 <tr align="center">
   <th colspan="3" align="right">
   <?php loginheader(); ?>
   </th>
 </tr>
 <tr align="center" bgcolor="#EEEEF8">
 <td align="left"><a href="login.php?member=D">Administrator Login</a></td>
   <td colspan="2" align="right"><a href="login.php?member=A">Applicant Login/Register</a> | <a href="login.php?member=E">Employer Login/Register</a></td>
 </tr>
 <tr align="center"><td colspan="3"><table border="1" cellpadding="1">
   <tr>
     <td>Keyword</td><td><input type="text" name="keyword"><br>
     e.g Job Title, Company Name, keywords</td>
	 <td>Country</td><td>
	 <select name="countryid" id="countryid">
       <option value="">--select country--</option>
       <?php populate_select("countries","countryid","country",$jobs->countryid); ?>
     </select></td>
      <td align="center"><input type="submit" name="submit" value="Search"><br>
        <a href="vacancies.php">Advanced Search</a> </td>
   </tr>
 </table></td></tr>
 <tr>
<td colspan="3"><table border="0" align="center">
  <tr><td colspan="7">
  <?php
		if(isset($_GET["list"])) $_SESSION["list"]=$_GET["list"];
		switch($_SESSION["list"]){
		case 'vacancies':
			vacancies($where);
			break;
		default:
			vacancies($where);
			break;
		}
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
