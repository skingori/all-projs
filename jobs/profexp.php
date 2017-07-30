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
		//$applicantid =(!empty($_POST["applicantid"])) ? $_POST["applicantid"] : 'NULL';
		$id =(!empty($_POST["id"])) ? $_POST["id"] : 'NULL';
		$applicantid =(!empty($_SESSION["userid"])) ? $_SESSION["userid"] : 'NULL';
		$organization = !empty($_POST["organization"]) ? "'" . $_POST["organization"] . "'" : 'NULL';
		$startmonth =(!empty($_POST["startmonth"])) ? $_POST["startmonth"] : 'NULL';
		$startyear =(!empty($_POST["startyear"])) ? $_POST["startyear"] : 'NULL';
		$endmonth = (!isset($_POST["endmonth"]) || trim($_POST["endmonth"])=='') ? 'NULL' : $_POST["endmonth"];
		$endyear = (!isset($_POST["endyear"]) || trim($_POST["endyear"])=='') ? 'NULL' : $_POST["endyear"];
		$startsalarymonth =(!empty($_POST["startsalarymonth"])) ? $_POST["startsalarymonth"] : 'NULL';
		$currentsalarymonth =(!empty($_POST["currentsalarymonth"])) ? $_POST["currentsalarymonth"] : 'NULL';
		$jobtitle = !empty($_POST["jobtitle"]) ? "'" . $_POST["jobtitle"] . "'" : 'NULL';
		$manager_supervisor = (!isset($_POST["manager_supervisor"]) || trim($_POST["manager_supervisor"])=='') ? 'NULL' : $_POST["manager_supervisor"];
		$duties_responsibilities = !empty($_POST["duties_responsibilities"]) ? "'" . addslashes($_POST["duties_responsibilities"]) . "'" : 'NULL';
	}
	switch($_POST["submit"]){
	case "Save & add another":
		$sql="INSERT INTO experience (applicantid,organization,startmonth,startyear,endmonth,endyear,startsalarymonth,currentsalarymonth,
				jobtitle,manager_supervisor,duties_responsibilities)
			VALUES($applicantid,$organization,$startmonth,$startyear,$endmonth,$endyear,$startsalarymonth,$currentsalarymonth,
				$jobtitle,$manager_supervisor,$duties_responsibilities)";
		$results=query($sql,$conn);
		$msg[0]="Sorry professional experience not added";
		$msg[1]="Professional experience successfull added";
		AddSuccess($results,$conn,$msg);
		break;
	case "Update & Continue":
		$sql="UPDATE experience SET applicantid=$applicantid,organization=$organization,startmonth=$startmonth,
				startyear=$startyear,endmonth=$endmonth,endyear=$endyear,startsalarymonth=$startsalarymonth,
				currentsalarymonth=$currentsalarymonth,jobtitle=$jobtitle,manager_supervisor=$manager_supervisor,
				duties_responsibilities=$duties_responsibilities
			WHERE id=$_POST[id]";
		$results=query($sql,$conn);
		$msg[0]="Sorry professional experience not updated";
		$msg[1]="Professional experience successfull updated";
		AddSuccess($results,$conn,$msg);
		break;
	case "Delete":
		$sql = "DELETE FROM experience WHERE id=$id";
		$results=query($sql,$conn);
		$msg[0]="Sorry professional experience not deleted";
		$msg[1]="professional experience successfull deleted";
		AddSuccess($results,$conn,$msg);
		break;
	case "Find":
		$sql = "SELECT *
				FROM experience
				WHERE id=$id";
		$results=query($sql,$conn);
		$experience = fetch_object($results);
		break;
	case "Skip>>":
		echo "<meta http-equiv=\"Refresh\" content=\"0;url=./education.php\">";
		break;
	case "<<Back":
		echo "<meta http-equiv=\"Refresh\" content=\"0;url=./qualsumm.php\">";
		break;
	}
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>tarclink - professional experience</title>
<link href="css/main.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/epoch_styles.css"/>
<?php headericon(); ?>
<script language="JavaScript" src="js/highlight.js" type="text/javascript"></script>
<script type="text/javascript" src="js/formval.js"></script>
<script type="text/javascript">
<!--
var request;
var dest;

function validateOnSubmit() {
	var elem;
    var errs=0;
	// execute all element validations in reverse order, so focus gets
    // set to the first one in error.
	if (!validatePresent (document.forms.profexp.jobtitle,'inf_jobtitle')) errs += 1;
	if (!validateSelect (document.forms.profexp.endyear,'inf_enddate',1)) errs += 1;
	if (!validateSelect (document.forms.profexp.endmonth,'inf_enddate',1)) errs += 1;
	if (!validateSelect (document.forms.profexp.startyear,'inf_startdate',1)) errs += 1;
	if (!validateSelect (document.forms.profexp.startmonth,'inf_startdate',1)) errs += 1;
	if (!validatePresent (document.forms.profexp.organization,'inf_organization')) errs += 1;

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
<script language="JavaScript" type="text/javascript" src="openwysiwyg/wysiwyg.js"></script>
</head>
<body bgcolor="#FFFFFF">
<form action="profexp.php" method="post" name="profexp" id="profexp" enctype="multipart/form-data">
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
      <th colspan="3" bgcolor="#CCCCCC"><strong>PROFESSIONAL EXPERIENCE</strong></th>
    </tr>
    <tr>
      <td colspan="2" align="center">
<?php $conn=db_connect(HOST,USER,PASS,DB,PORT);
	$querystr="SELECT id,applicantid,organization,jobtitle,startmonth,startyear,endmonth,endyear
		FROM experience
		WHERE experience.applicantid =  $_SESSION[userid]";
	$results=query($querystr,$conn);
	//check if data is returned
	echo "<table border=\"0\" width=\"100%\">";
	echo "<tr class=\"boldtext\"><td>Organization</td><td>Job Title</td><td>From</td><td>To</td><td>Action</td></tr>";
	while ($profexper = fetch_object($results)){
		//alternate row colour
		$j++;
		if($j%2==1){
			echo "<tr id=\"row$j\" onmouseover=\"javascript:setColor('$j')\" onmouseout=\"javascript:origColor('$j')\" bgcolor=\"#CCCCCC\">";
		}else{
			echo "<tr id=\"row$j\" onmouseover=\"javascript:setColor('$j')\" onmouseout=\"javascript:origColor('$j')\" bgcolor=\"#EEEEF8\">";
		}
			echo "<td align=\"left\"><input name=\"id\" type=\"hidden\" value=\"$profexper->id\">$profexper->organization</td>
				<td align=\"left\">$profexper->jobtitle</td>
				<td align=\"left\">$profexper->startmonth / $profexper->startyear</td>
				<td align=\"left\">$profexper->endmonth / $profexper->endyear</td>
				<td align=\"left\"><a name=\"editexperience\" href=\"profexp.php?search=$profexper->id&action=Find\">Edit </a>|
				<a name=\"deleteexperience\" href=\"profexp.php?search=$profexper->id&action=Delete\" onClick=\"Javascript:return confirm('Are you sure you want Delete this Record?','Confirm Delete')\">Delete</a></td>
			</tr>";
	}
	echo "</table>";
?></td>
    </tr>
    <tr>
      <td colspan="2"><em>Fields marked by <span class="warn">*</span> are required fields and must be filled in.</em></td>
    </tr>
    <tr>
      <td>Organization</td>
      <td><input name="organization" type="text" id="organization" value="<?php echo $experience->organization; ?>"/>
        <div id="inf_organization" class="warn">* </div></td>
    </tr>
    <tr>
      <td>Start Date </td>
      <td><select name="startmonth" id="startmonth">
        <option value="">--select month--</option>
        <option value="1" <?php if($experience->startmonth==1) echo 'selected' ?>>January</option>
        <option value="2" <?php if($experience->startmonth==2) echo 'selected' ?>>Febuary</option>
        <option value="3" <?php if($experience->startmonth==3) echo 'selected' ?>>March</option>
        <option value="4" <?php if($experience->startmonth==4) echo 'selected' ?>>April</option>
        <option value="5" <?php if($experience->startmonth==5) echo 'selected' ?>>May</option>
        <option value="6" <?php if($experience->startmonth==6) echo 'selected' ?>>June</option>
        <option value="7" <?php if($experience->startmonth==7) echo 'selected' ?>>July</option>
        <option value="8" <?php if($experience->startmonth==8) echo 'selected' ?>>August</option>
        <option value="9" <?php if($experience->startmonth==9) echo 'selected' ?>>September</option>
        <option value="10" <?php if($experience->startmonth==10) echo 'selected' ?>>October</option>
        <option value="11" <?php if($experience->startmonth==11) echo 'selected' ?>>November</option>
        <option value="12" <?php if($experience->startmonth==12) echo 'selected' ?>>December</option>
      </select>
        <select name="startyear" id="startyear">
          <option value="">--select year--</option>
          <?php
	  	for($i=0; $i<15; $i++){
			$payyear = date("Y")-$i;
			//echo "<option value='$payyear'>$payyear</option>";
			echo "<option value='$payyear'";
			if($experience->startyear==$payyear) echo "selected";
			echo ">$payyear</option>";
		}
	  ?>
        </select>
        <div id="inf_startdate" class="warn">* </div></td>
    </tr>
    <tr>
      <td>End Date </td>
      <td><select name="endmonth" id="endmonth">
        <option value="0" <?php if($experience->endmonth==0) echo 'selected' ?>>--current employer--</option>
        <option value="1" <?php if($experience->endmonth==1) echo 'selected' ?>>January</option>
        <option value="2" <?php if($experience->endmonth==2) echo 'selected' ?>>Febuary</option>
        <option value="3" <?php if($experience->endmonth==3) echo 'selected' ?>>March</option>
        <option value="4" <?php if($experience->endmonth==4) echo 'selected' ?>>April</option>
        <option value="5" <?php if($experience->endmonth==5) echo 'selected' ?>>May</option>
        <option value="6" <?php if($experience->endmonth==6) echo 'selected' ?>>June</option>
        <option value="7" <?php if($experience->endmonth==7) echo 'selected' ?>>July</option>
        <option value="8" <?php if($experience->endmonth==8) echo 'selected' ?>>August</option>
        <option value="9" <?php if($experience->endmonth==9) echo 'selected' ?>>September</option>
        <option value="10" <?php if($experience->endmonth==10) echo 'selected' ?>>October</option>
        <option value="11" <?php if($experience->endmonth==11) echo 'selected' ?>>November</option>
        <option value="12" <?php if($experience->endmonth==12) echo 'selected' ?>>December</option>
      </select>
        <select name="endyear" id="endyear">
          <option value="0">--current employer--</option>
          <?php
	  	for($i=0; $i<25; $i++){
			$payyear = date("Y")-$i;
			//echo "<option value='$payyear'>$payyear</option>";
			echo "<option value='$payyear'";
			if($experience->endyear==$payyear) echo "selected";
			echo ">$payyear</option>";
		}
	  ?>
        </select>
        <div id="inf_enddate" class="warn">* </div></td>
    </tr>
    <tr>
      <td>Starting Salary/Month</td>
      <td><input name="startsalarymonth" type="text" id="startsalarymonth" value="<?php echo $experience->startsalarymonth; ?>"/></td>
    </tr>
    <tr>
      <td>Ending/Current Salary/Month</td>
      <td><input name="currentsalarymonth" type="text" id="currentsalarymonth" value="<?php echo $experience->currentsalarymonth; ?>"/></td>
    </tr>
    <tr>
      <td valign="top">Job Title </td>
      <td><input name="jobtitle" type="text" id="jobtitle" value="<?php echo $experience->jobtitle; ?>"/>
          <div id="inf_jobtitle" class="warn">* </div>
          Managerial or Supervisor responsibility<br>
          <label>
          <input type="radio" name="manager_supervisor" value="1" <?php if($experience->manager_supervisor==1) echo 'checked' ?>>Yes</label>
          <label><input type="radio" name="manager_supervisor" value="0" <?php if($experience->manager_supervisor=='0' && trim($experience->manager_supervisor)!=='') echo 'checked' ?>>No</label>
	</td>
    </tr>
    <tr>
      <td>Duties &amp; Responsibilities </td>
      <td>
	  <textarea name="duties_responsibilities" id="duties_responsibilities" cols="45" rows="8"><?php echo stripslashes($experience->duties_responsibilities); ?></textarea>
		<script language="JavaScript">
		  generate_wysiwyg('duties_responsibilities');
		</script>
	  </td>
    </tr>
    <tr align="center">
      <td colspan="2"><input type="submit" name="submit" value="<<Back">
		<input type="submit" name="submit" value="<?php echo $_GET["action"]=="Find" ? "Update & Continue" : "Save & add another"; ?>" onclick="return validateOnSubmit();"/>
        <input type="submit" name="submit" value="Skip>>"/>
		</td>
    </tr>

</table></td>
 <tr><td colspan="3" align="center"><?php footer(); ?></td></tr>
</table>
</div>
</form>
</body>
</html>
