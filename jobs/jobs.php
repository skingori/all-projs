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
	$jobid=$_GET["search"];
	$_POST["submit"]=$_GET["action"];
}

if(isset($_POST["submit"])){
	if($_POST["submit"]=="Save & Continue" || $_POST["submit"]=="Update & Continue"){
		$jobid =$_POST["jobid"];
		$employerid = $_SESSION["userid"];
		$jobcategory = !empty($_POST["jobcategory"]) ? "'" . $_POST["jobcategory"] . "'" : 'NULL';
		$employeetype = !empty($_POST["employeetype"]) ? "'" . $_POST["employeetype"] . "'" : 'NULL';
		$city = !empty($_POST["city"]) ? "'" . $_POST["city"] . "'" : 'NULL';
		$countryid =(!empty($_POST["countryid"])) ? $_POST["countryid"] : 'NULL';
		$jobtitle = !empty($_POST["jobtitle"]) ? "'" . $_POST["jobtitle"] . "'" : 'NULL';
		$summary = !empty($_POST["summary"]) ? "'" . addslashes($_POST["summary"]) . "'" : 'NULL';
		$description = !empty($_POST["description"]) ? "'" . addslashes($_POST["description"]) . "'" : 'NULL';
		$requirements = !empty($_POST["requirements"]) ? "'" . addslashes($_POST["requirements"]) . "'" : 'NULL';
		$dateposted = !empty($_POST["dateposted"]) ? "'" . dateconvert($_POST["dateposted"],1) . "'" : 'NULL';
		$dateclosing = !empty($_POST["dateclosing"]) ? "'" . dateconvert($_POST["dateclosing"],1) . "'" : 'NULL';
		$pay =(!empty($_POST["pay"])) ? $_POST["pay"] : 'NULL';
	}

	switch($_POST["submit"]){
	case "Save & Continue":
		$sql="INSERT INTO job (employerid,jobcategory,employeetype,city,countryid,jobtitle,summary,requirements,description,dateposted,dateclosing,pay)
			VALUES($employerid,$jobcategory,$employeetype,$city,$countryid,$jobtitle,$summary,$description,$requirements,$dateposted,$dateclosing,$pay)";
		$results=query($sql,$conn);
		$msg[0]="Sorry job details not added";
		$msg[1]="Job details successfull added";
		AddSuccess($results,$conn,$msg);
		break;
	case "Update & Continue":
		$sql="UPDATE job SET employerid=$employerid,jobcategory=$jobcategory,employeetype=$employeetype,
			city=$city,countryid=$countryid,jobtitle=$jobtitle,summary=$summary,requirements=$requirements,
			dateposted=$dateposted,dateclosing=$dateclosing,pay=$pay
			 WHERE jobid=$_POST[jobid]";
		$results=query($sql,$conn);
		$msg[0]="Sorry job details not updated";
		$msg[1]="Job details successfull updated";
		AddSuccess($results,$conn,$msg);
		break;
	case "Delete":
		$sql = "DELETE FROM job WHERE jobid=$jobid";
		$results=query($sql,$conn);
		$msg[0]="Sorry job details not deleted";
		$msg[1]="Job details successfull deleted";
		AddSuccess($results,$conn,$msg);
		break;
	case "Find":
		$sql = "SELECT * FROM job WHERE jobid=$jobid";
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
<title>tarclink - jobs</title>
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
	dp_cal  = new Epoch('epoch_popup','popup',document.getElementById('dateposted'));
	dp_cal  = new Epoch('epoch_popup','popup',document.getElementById('dateclosing'));
};

function validateOnSubmit() {
	var elem;
    var errs=0;
	// execute all element validations in reverse order, so focus gets
    // set to the first one in error.
	if (!validatePresent (document.forms.jobs.dateclosing,'inf_dateclosing')) errs += 1;
	if (!validatePresent (document.forms.jobs.dateposted,'inf_dateposted')) errs += 1;
	//if (!validatePresent (document.forms.jobs.description,'inf_description')) errs += 1;
	if (!validateSelect (document.forms.jobs.countryid,'inf_countryid',1)) errs += 1;
	if (!validatePresent (document.forms.jobs.city,'inf_city')) errs += 1;
	if (!validateSelect (document.forms.jobs.employeetype,'inf_employeetype',1)) errs += 1;
	if (!validatePresent (document.forms.jobs.jobcategory,'inf_jobcategory')) errs += 1;
	if (!validatePresent (document.forms.jobs.jobtitle,'inf_jobtitle')) errs += 1;

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
	userid = document.getElementById('userid').value;
	var str ='userid='+userid+'&button='+button;
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
<form action="jobs.php" method="post" name="jobs" id="jobs" enctype="multipart/form-data">
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
      <th colspan="3" bgcolor="#CCCCCC"><strong>JOB ADVERTISEMENT</strong></th>
    </tr>
    <tr>
      <td colspan="2" align="center">
<?php
	$conn=db_connect(HOST,USER,PASS,DB,PORT);
	$querystr="SELECT employer.employerid,employer.organization,job.jobid,job.employerid,job.jobcategory,
			job.employeetype,job.city,job.countryid,job.jobtitle,job.summary,job.description,job.requirements,
			job.dateposted,job.dateclosing,job.contactinfo,job.pay,countries.country
		FROM employer
			Inner Join job ON employer.employerid = job.employerid
			Inner Join countries ON job.countryid = countries.countryid
		WHERE employer.employerid = $_SESSION[userid]";

	$results=query($querystr,$conn);
	//check if data is returned
	echo "<table border=\"0\" width=\"100%\">";
	echo "<tr class=\"boldtext\"><td>Organization</td><td>Job Title</td><td>From</td><td>To</td><td>Action</td></tr>";
	while ($joblist = fetch_object($results)){
		//alternate row colour
		$j++;
		if($j%2==1){
			echo "<tr id=\"row$j\" onmouseover=\"javascript:setColor('$j')\" onmouseout=\"javascript:origColor('$j')\" bgcolor=\"#CCCCCC\">";
		}else{
			echo "<tr id=\"row$j\" onmouseover=\"javascript:setColor('$j')\" onmouseout=\"javascript:origColor('$j')\" bgcolor=\"#EEEEF8\">";
		}
			echo "<td align=\"left\"><input name=\"id\" type=\"hidden\" value=\"$joblist->id\">$joblist->organization</td>
				<td align=\"left\">$joblist->jobtitle</td>
				<td align=\"left\">$joblist->dateposted</td>
				<td align=\"left\">$joblist->dateclosing</td>
				<td align=\"left\">
				<a name=\"editjob\" href=\"jobdetails.php?jobid=$joblist->jobid\" target='_blank'>View </a>|
				<a name=\"editjob\" href=\"jobs.php?search=$joblist->jobid&action=Find\">Edit </a> |
				<a name=\"deletejob\" href=\"jobs.php?search=$joblist->jobid&action=Delete\" onClick=\"Javascript:return confirm('Are you sure you want Delete this Record?','Confirm Delete')\">Delete</a></td>
			</tr>";
	}
	echo "</table>";
?></td>
    </tr>
    <tr>
      <td colspan="2"><em>Fields marked by * are required fields and must be filled in.</em></td>
    </tr>
    <tr>
      <td>Job Title
        <input type="hidden" name="jobid" value="<?php echo $job->jobid; ?>"></td>
      <td><input name="jobtitle" type="text" id="jobtitle" value="<?php echo $job->jobtitle; ?>"/>
        <div id="inf_jobtitle" class="warn">* </div></td>
    </tr>
    <tr>
      <td>Category</td>
      <td><select name="jobcategory" id="jobcategory">
          <option value="">--select job category--</option>
          <?php populate_select("jobcat","id","jobcategory",$job->jobcategory); ?>
           <option value="0">Other</option>
        </select>
        <div id="inf_jobcategory" class="warn">* </div></td>
    </tr>
    <tr>
      <td>Employment Type </td>
      <td>
	  <select name="employeetype" id="employeetype">
          <option value="">--select employment type--</option>
          <?php populate_select("emptype","employmenttype","employmenttype",$job->employeetype); ?>
        </select>
        <div id="inf_employeetype" class="warn">* </div></td>
    </tr>
    <tr>
      <td>City</td>
      <td>        <input name="city" type="text" id="city" value="<?php echo $job->city; ?>"/>
        <div id="inf_city" class="warn">* </div></td>
    </tr>
    <tr>
      <td>Country</td>
      <td>        <select name="countryid" id="countryid">
          <option value="">--select country--</option>
          <?php populate_select("countries","countryid","country",$job->countryid); ?>
        </select>
        <div id="inf_countryid" class="warn">* </div></td>
    </tr>
    <tr>
      <td>Summary</td>
      <td><input name="summary" type="text" id="summary" value="<?php echo $job->summary; ?>" size="80"/></td>
    </tr>
    <tr>
      <td valign="top">Description
        <div id="inf_description" class="warn">* </div></td>
      <td><textarea name="description" id="description" cols="45" rows="8"><?php echo $job->description; ?></textarea>
		<script language="JavaScript">
		  generate_wysiwyg('description');
		</script></td>
    </tr>
    <tr>
      <td>Requirements</td>
      <td>
	  <textarea name="requirements" id="requirements" cols="45" rows="8"><?php echo $job->requirements; ?></textarea>
		<script language="JavaScript">
		  generate_wysiwyg('requirements');
		</script>
	  </td>
    </tr>
    <tr>
      <td>Date Posted </td>
      <td><input name="dateposted" type="text" id="dateposted" value="<?php echo dateconvert($job->dateposted,2); ?>"/>
        <div id="inf_dateposted" class="warn">* </div></td>
    </tr>
    <tr>
      <td>Closing Date </td>
      <td><input name="dateclosing" type="text" id="dateclosing" value="<?php echo dateconvert($job->dateclosing,2); ?>"/>
        <div id="inf_dateclosing" class="warn">* </div></td>
    </tr>
    <tr>
      <td><p>Contact Info </p>
        <p><em>If no contact information is provide, the employers contact is used. </em></p></td>
      <td><textarea name="contactinfo" id="contactinfo" rows="4"><?php echo $job->contactinfo; ?></textarea></td>
    </tr>
    <tr>
      <td>Pay</td>
      <td><input name="pay" type="text" id="pay" value="<?php echo $job->pay; ?>"/></td>
    </tr>
    <tr align="center">
      <td colspan="2"><input type="submit" name="submit" value="<<Back">
        <input type="submit" name="submit" value="<?php echo $_GET["action"]=="Find" ? "Update & Continue" : "Save & Continue"; ?>" onclick="return validateOnSubmit();"/>
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
