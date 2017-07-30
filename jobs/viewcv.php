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

if(isset($_GET["applicant"])){
	$cvid = $_GET["applicant"];
}else{
	$cvid = $_SESSION["userid"];
}

$sql="SELECT applicant.id,applicant.cvviews,applicant.applicantid,concat_ws(' ',salutation,fname,mname,surname) AS applicant,
		applicant.sex,applicant.mstatus,applicant.dob,applicant.hbox,applicant.htown,
		applicant.hzip_postal,applicant.hcountry,applicant.hphone,applicant.hmobile,applicant.hemail,applicant.obox,
		applicant.otown,applicant.ozip_postal,applicant.ocountry,applicant.ophone,applicant.omobile,
		applicant.oemail,applicant.qualsumm,country.country as ctoforigin,nationality.country as nationality,citizenship.country as citizenship
	FROM applicant
		Left Join countries AS country ON applicant.ctoforigin = country.countryid
		Left Join countries AS nationality ON applicant.nationality = nationality.countryid
		Left Join countries AS citizenship ON applicant.citizenship = citizenship.countryid
	WHERE applicant.applicantid = $cvid";
$results=query($sql,$conn);
$applicant = fetch_object($results);
$today = getdate();

//update cv views - if applicant do not update the cvviews.
$sql="UPDATE applicant SET cvviews=$applicant->cvviews+1 WHERE applicantid=$cvid";
$viewresults=query($sql,$conn);
free_result($viewresults);

//check if user is logged in
SignedIn();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>tarclink - view cv</title>
<script language="JavaScript" src="js/highlight.js" type="text/javascript"></script>
<link href="css/main.css" rel="stylesheet" type="text/css">
<?php headericon(); ?>
</head>
<body>
<form action="viewcv.php" method="POST"  name="viewcv" id="viewcv" enctype="multipart/form-data">
<div align="center">
<table>
 <tr align="center">
   <td colspan="2">
   <?php
   	echo "<h1>$applicant->applicant</h1> <br>
		Mob. : $applicant->hmobile <br>
		P. O. Box: $applicant->hbox $applicant->htown - $applicant->hzip_postal, $applicant->country <br>
		Email: $applicant->hemail <br>";
   ?>
   </td>
 </tr>
 <tr align="center">
   <th colspan="2">Personal Data</th>
 </tr>
 <tr>
   <td align="left" colspan="2">
   <?php
   	echo "<b>Date of Birth 				:</b> $applicant->dob <br>
		<b>Sex 							:</b> $applicant->sex <br>
		<b>Marital Status</b> 			:</b> $applicant->mstatus <br>
		<b>Country of Citizenship</b> 	:</b> $applicant->nationality <br>
		<b>Country of Origin</b> 		:</b> $applicant->citizenship <br>
		<b>Country of Residence</b> 	:</b> $applicant->ctoforigin ";
	?>
</td>
 </tr>
 <tr align="center">
   <th colspan="2">Career Objective</th>
 </tr>
 <tr align="center">
   <td align="left" colspan="2">
   <?php
   $querystr="SELECT id,objective
		FROM objective
		WHERE objective.applicantid =  $cvid";
	$results=query($querystr,$conn);
	$careerobj = fetch_object($results);
	echo wordwrap($careerobj->objective,100,'<br />');
	free_result(results);
   ?>
   </td>
 </tr>
 <tr align="center">
   <th colspan="2">Education</th>
 </tr>
 <?php
   	$querystr="SELECT education.id,education.applicantid,education.highestlevel,education.award,
		education.fieldofstudy,education.institution,education.city,education.yearofgraduation,countries.country
	FROM education
		Left Join countries ON education.countryid = countries.countryid
	WHERE education.applicantid =  $cvid";
	$results=query($querystr,$conn);
	while ($education = fetch_object($results)){
	 echo "<tr align=\"center\">
      <td align=\"left\" valign=\"top\" class=\"boldtext\">$education->yearofgraduation</td>
	   <td align=\"left\"><b>$education->award, $education->fieldofstudy</b><br>
	   		$education->institution, $education->city, $education->country<br>
			$education->specialaward
			</td>
	   </tr>";
	}
	free_result(results);
?>
 <tr align="center">
   <th colspan="2">Professional Experience</th>
 </tr>
   <?php
   	$querystr="SELECT id,applicantid,organization,startmonth,startyear,endmonth,endyear,startsalarymonth,
			currentsalarymonth,jobtitle,manager_supervisor,duties_responsibilities
		FROM experience
		WHERE experience.applicantid =  $cvid";
	$results=query($querystr,$conn);

	while ($profexp = fetch_object($results)){
	$manager_supervisor = ($profexp->manager_supervisor == '1') ? 'Managerial Post' : '';
	 echo "<tr align=\"center\">
      <td align=\"left\" valign=\"top\" class=\"boldtext\">$profexp->startmonth/$profexp->startyear-$profexp->endmonth/$profexp->endyear</td>
   <td align=\"left\">";
		echo "<p>$profexp->jobtitle <i>($manager_supervisor)</i><br>
		$profexp->organization<br></p>

		<p>
		<b>Start Salary:</b> $profexp->startsalarymonth Kenya-KES <br>
		<b>End Salary:</b> $profexp->currentsalarymonth Kenya-KES <br>
		</p>

		Major Duties & Responsibilities<br>".
		stripslashes($profexp->duties_responsibilities);
	 echo "</td></tr>";
	}
	free_result(results);
?>
 <tr align="center">
   <th colspan="2">Trainings/Workshops</th>
 </tr>
 <?php
   	$querystr="SELECT id,trainingtitle,provider,description,startdate,enddate FROM training WHERE training.applicantid = $cvid";
	$results=query($querystr,$conn);
	while ($training = fetch_object($results)){
	 echo "<tr align=\"center\">
      <td align=\"left\" valign=\"top\" class=\"boldtext\">$training->startdate - $training->enddate</td>
	   <td align=\"left\"><b>$training->trainingtitle</b><br>
	   		$training->provider<br>
			".wordwrap($training->description,100,'<br/>')."</td>
	   </tr>";
	}
	free_result(results);
?>
 <tr align="center">
   <th colspan="2">Publications</th>
 </tr>
 <?php
   	$querystr="SELECT id,ptitle,pdate,description
		FROM publication
		WHERE publication.applicantid =  $cvid";
	$results=query($querystr,$conn);

	while ($publication = fetch_object($results)){
	 echo "<tr align=\"center\">
      <td align=\"left\" valign=\"top\" class=\"boldtext\">Publication Date:</td>
	  <td align=\"left\">$publication->pdate</td>
	  </tr>
	  <tr align=\"center\">
      <td align=\"left\" valign=\"top\" class=\"boldtext\">Title:</td>
	  <td align=\"left\">".wordwrap($publication->ptitle,100,'<br/>')."<br><br>".wordwrap($publication->description,100,'<br/>')."</td>
	  </tr>";
	}
	free_result(results);
?>
 <tr align="center">
   <th colspan="2">Languages</th>
 </tr>
 <tr align="center">
   <td colspan="2"><?php $conn=db_connect(HOST,USER,PASS,DB,PORT);
	$querystr="SELECT id,applicantid,language,orallevel,writtenlevel
		FROM language
		WHERE language.applicantid =  $cvid";
	$results=query($querystr,$conn);
	//check if data is returned
	echo "<table border=\"0\" width=\"100%\">";
	echo "<tr class=\"boldtext\"><td></td><td>Oral Level</td><td>Written Level</td></tr>";
	while ($lang = fetch_object($results)){
		//alternate row colour
		$j++;
		if($j%2==1){
			echo "<tr id=\"row$j\" onmouseover=\"javascript:setColor('$j')\" onmouseout=\"javascript:origColor('$j')\" bgcolor=\"#CCCCCC\">";
		}else{
			echo "<tr id=\"row$j\" onmouseover=\"javascript:setColor('$j')\" onmouseout=\"javascript:origColor('$j')\" bgcolor=\"#EEEEF8\">";
		}
			echo "<td align=\"left\"><input name=\"id\" type=\"hidden\" value=\"$lang->id\">$lang->language</td>
				<td align=\"left\">$lang->orallevel</td>
				<td align=\"left\">$lang->writtenlevel</td>
			</tr>";
	}
	echo "</table>";
	free_result($results);
?></td>
 </tr>
 <tr align="center">
   <th colspan="2">Professional Memberships</th>
 </tr>
   <?php
   	$querystr="SELECT id,applicantid,association,title_role,membersince
		FROM professional
		WHERE professional.applicantid =  $cvid";
	$results=query($querystr,$conn);

	while ($profmem = fetch_object($results)){
	 echo "<tr align=\"center\">
      <td align=\"left\" valign=\"top\" class=\"boldtext\">Organization</td>
	  <td align=\"left\">$profmem->association</td>
	  </tr>
	  <tr align=\"center\">
      <td align=\"left\" valign=\"top\" class=\"boldtext\">Member Since</td>
	  <td align=\"left\">$profmem->membersince<br>$profmem->title_role</td>
	  </tr>";
	}
	free_result(results);
?>
 <tr align="center">
   <th colspan="2">References</th>
 </tr>
  <tr align="center">
   <td align="left" colspan="2">
   <?php
	$querystr="SELECT name,refposition,organization,telephone,email FROM referee WHERE applicantid = $cvid";
	$results=query($querystr,$conn);
	while ($referee = fetch_object($results)){
			echo "<p>
				<b>$referee->name</b><br>
				$referee->refposition<br>
				$referee->organization<br>
				<b>Telephone:</b> $referee->telephone<br>
				<b>Email:</b> <a href='mailto:$referee->email'>$referee->email</a>
				</p>";
	}

	free_result($results);
	?>
</td>
 </tr>
 <tr>
   <td colspan="2"><?php footer(); ?></td>
</table>
</div>
</form>
</body>
</html>
