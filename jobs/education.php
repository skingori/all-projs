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
		$id = (!empty($_POST["id"])) ? $_POST["id"] : 'NULL';
		$applicantid =(!empty($_SESSION["userid"])) ? $_SESSION["userid"] : 'NULL';
		$institution = !empty($_POST["institution"]) ? "'" . $_POST["institution"] . "'" : 'NULL';
		$countryid = !empty($_POST["countryid"]) ? "'" . $_POST["countryid"] . "'" : 'NULL';
		$city = !empty($_POST["city"]) ? "'" . $_POST["city"] . "'" : 'NULL';
		$award = !empty($_POST["award"]) ? "'" . $_POST["award"] . "'" : 'NULL';
		$awardcategory = !empty($_POST["awardcategory"]) ? "'" . $_POST["awardcategory"] . "'" : 'NULL';
		$fieldofstudy = !empty($_POST["fieldofstudy"]) ? "'" . $_POST["fieldofstudy"] . "'" : 'NULL';
		$fieldofstudycategoryid = !empty($_POST["fieldofstudycategoryid"]) ? $_POST["fieldofstudycategoryid"] : 'NULL';
		$specialaward = !empty($_POST["specialaward"]) ? "'" . $_POST["specialaward"] . "'" : 'NULL';
		$yearofgraduation = !empty($_POST["yearofgraduation"]) ? "'" . $_POST["yearofgraduation"] . "'" : 'NULL';
		$expectedgraduation = !empty($_POST["expectedgraduation"]) ? "'" . $_POST["expectedgraduation"] . "'" : 'NULL';
		$highestlevel = (!isset($_POST["highestlevel"]) || trim($_POST["highestlevel"])=='') ? 'NULL' : $_POST["highestlevel"];
		//(!isset($_POST['Povale200wbc']) || trim($_POST['Povale200wbc']) == '')
	}
	switch($_POST["submit"]){
	case "Save & add another":
		$sql="INSERT INTO education (applicantid,institution,countryid,city,award,awardcategory,fieldofstudy,fieldofstudycategoryid,
				specialaward,yearofgraduation,expectedgraduation,highestlevel)
			VALUES($applicantid,$institution,$countryid,$city,$award,$awardcategory,$fieldofstudy,$fieldofstudycategoryid,
			$specialaward,$yearofgraduation,$expectedgraduation,$highestlevel)";
		$results=query($sql,$conn);
		$msg[0]="Sorry education details not added";
		$msg[1]="Education details successfull added";
		AddSuccess($results,$conn,$msg);
		break;
	case "Update & Continue":
		$sql="UPDATE education SET applicantid=$applicantid,institution=$institution,countryid=$countryid,city=$city,award=$award,
				awardcategory=$awardcategory,fieldofstudy=$fieldofstudy,fieldofstudycategoryid=$fieldofstudycategoryid,
				specialaward=$specialaward,yearofgraduation=$yearofgraduation,expectedgraduation=$expectedgraduation,highestlevel=$highestlevel WHERE id=$_POST[id]";
		$results=query($sql,$conn);
		$msg[0]="Sorry education details not updated";
		$msg[1]="Education details successfull updated";
		AddSuccess($results,$conn,$msg);
		break;
	case "Delete":
		$sql = "DELETE FROM education WHERE id=$id";
		$results=query($sql,$conn);
		$msg[0]="Sorry educational details not deleted";
		$msg[1]="Educational details successfull deleted";
		AddSuccess($results,$conn,$msg);
		break;
	case "Find":
		$sql = "SELECT *
				FROM education
				WHERE id=$id";
		$results=query($sql,$conn);
		$education = fetch_object($results);
		break;
	case "Skip>>":
		echo "<meta http-equiv=\"Refresh\" content=\"0;url=./training.php\">";
		break;
	case "<<Back":
		echo "<meta http-equiv=\"Refresh\" content=\"0;url=./profexp.php\">";
		break;
	}
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>tarclink - eduction</title>
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
	if (!validateSelect (document.forms.education.yearofgraduation,'inf_yearofgraduation',1)) errs += 1;
	if (!validateSelect (document.forms.education.fieldofstudycategoryid,'inf_fieldofstudycategoryid',1)) errs += 1;
	if (!validatePresent (document.forms.education.fieldofstudy,'inf_fieldofstudy')) errs += 1;
	if (!validateCheckbox(document.forms.education.awardcategory, 'inf_awardcategory', 1)) errs += 1;
	if (!validatePresent (document.forms.education.award,'inf_award')) errs += 1;
	if (!validateSelect (document.forms.education.countryid,'inf_countryid',1)) errs += 1;
	if (!validatePresent (document.forms.education.institution,'inf_institution')) errs += 1;

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
<form action="education.php" method="post" name="education" id="education" enctype="multipart/form-data">
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
      <th colspan="3" bgcolor="#CCCCCC"><strong>EDUCATION</strong></th>
    </tr>
    <tr>
      <td colspan="2" align="center">
<?php $conn=db_connect(HOST,USER,PASS,DB,PORT);
	$querystr="SELECT id,applicantid,highestlevel,award,fieldofstudy,institution,yearofgraduation,specialaward
		FROM education
		WHERE education.applicantid =  $_SESSION[userid]";
	$results=query($querystr,$conn);
	//check if data is returned
	echo "<table border=\"0\" width=\"100%\">";
	echo "<tr class=\"boldtext\"><td>Highest Level</td><td>Award</td><td>Field Of Study</td><td>Institution</td><td>Year of Graduation</td><td>Action</td></tr>";
	while ($edu = fetch_object($results)){
		//alternate row colour
		$j++;
		if($j%2==1){
			echo "<tr id=\"row$j\" onmouseover=\"javascript:setColor('$j')\" onmouseout=\"javascript:origColor('$j')\" bgcolor=\"#CCCCCC\">";
		}else{
			echo "<tr id=\"row$j\" onmouseover=\"javascript:setColor('$j')\" onmouseout=\"javascript:origColor('$j')\" bgcolor=\"#EEEEF8\">";
		}
			echo "<td align=\"left\"><input name=\"id\" type=\"hidden\" value=\"$edu->id\">";
			if($edu->highestlevel==1) echo "Yes";
			if($edu->highestlevel==0) echo "No";
			echo "</td>
				<td align=\"left\">$edu->award</td>
				<td align=\"left\">$edu->fieldofstudy</td>
				<td align=\"left\">$edu->institution</td>
				<td align=\"left\">$edu->yearofgraduation</td>
				<td align=\"left\"><a name=\"editeducation\" href=\"education.php?search=$edu->id&action=Find\">Edit </a>|
				<a name=\"deleteeducation\" href=\"education.php?search=$edu->id&action=Delete\" onClick=\"Javascript:return confirm('Are you sure you want Delete this Record?','Confirm Delete')\">Delete</a></td>
			</tr>";
	}
	echo "</table>";
?></td>
    </tr>
    <tr>
      <td colspan="2"><em>Fields marked by <span class="warn">*</span> are required fields and must be filled in.</em></td>
    </tr>
    <tr>
      <td>Name Of Institution </td>
      <td><input name="institution" type="text" id="institution" value="<?php echo $education->institution; ?>"/>
        <div id="inf_institution" class="warn">* </div></td>
    </tr>
    <tr>
      <td>Country</td>
      <td>        <select name="countryid" id="countryid">
        <option value="">--select country--</option>
        <?php populate_select("countries","countryid","country",$education->countryid); ?>
      </select>
        <div id="inf_countryid" class="warn">* </div></td>
    </tr>
    <tr>
      <td>City/Town</td>
      <td><input name="city" type="text" id="city" value="<?php echo $education->city; ?>"/></td>
    </tr>
    <tr>
      <td valign="top">Award</td>
      <td><input name="award" type="text" id="award" value="<?php echo $education->award; ?>"/>
        <div id="inf_award" class="warn">* </div>
	</td>
    </tr>
    <tr>
      <td>Award Category</td>
      <td><div id="inf_awardcategory" class="warn">* </div>
        <label><input type="radio" name="awardcategory" value="1" <?php if($education->awardcategory==1) echo 'checked' ?>>Primary School Leaving Certificate</label>
        <br>
        <label><input type="radio" name="awardcategory" value="2" <?php if($education->awardcategory==2) echo 'checked' ?>>Senior Secondary School Leaving Certificate</label>
        <br>
        <label><input type="radio" name="awardcategory" value="3" <?php if($education->awardcategory==3) echo 'checked' ?>>Vocational/Technical Certificate</label>
        <br>
        <label><input type="radio" name="awardcategory" value="4" <?php if($education->awardcategory==4) echo 'checked' ?>>Diploma and Above (2 -3 years)</label>
        <br>
        <label><input type="radio" name="awardcategory" value="5" <?php if($education->awardcategory==5) echo 'checked' ?>>Bachelor (4 - 5 years)</label>
        <br>
        <label><input type="radio" name="awardcategory" value="6" <?php if($education->awardcategory==6) echo 'checked' ?>>Postgraduate Diploma</label>
        <br>
        <label><input type="radio" name="awardcategory" value="7" <?php if($education->awardcategory==7) echo 'checked' ?>>Master</label>
        <br>
        <label><input type="radio" name="awardcategory" value="8" <?php if($education->awardcategory==8) echo 'checked' ?>>Doctorate (Ph.D., M.D.)</label>
		<br><br>
          Select this if this is the highest level of education<br>
          <label><input type="radio" name="highestlevel" value="1" <?php if($education->highestlevel==1) echo 'checked' ?>>Yes</label>
          <label><input type="radio" name="highestlevel" value="0" <?php if($education->highestlevel=='0' && trim($education->highestlevel)!=='') echo 'checked' ?>>No</label></td>
    </tr>
    <tr>
      <td>Field Of Study </td>
      <td><input name="fieldofstudy" type="text" id="fieldofstudy" value="<?php echo $education->fieldofstudy; ?>"/>
        <div id="inf_fieldofstudy" class="warn">* </div>
	  </td>
    </tr>
    <tr>
      <td>Field Of Study Category </td>
      <td>
	  <select name="fieldofstudycategoryid" id="fieldofstudycategoryid">
        <option value="">-- Select Field of Study Category--</option>
        <?php populate_select("studyfieldcat","id","fieldcategory",$education->fieldofstudycategoryid); ?>
      </select>
	  <div id="inf_fieldofstudycategoryid" class="warn">* </div></td>
    </tr>
    <tr>
      <td>Special Award </td>
      <td><input name="specialaward" type="text" id="specialaward" value="<?php echo $education->specialaward; ?>" size="40"/></td>
    </tr>
    <tr>
      <td>Year Of Graduation </td>
      <td><select name="yearofgraduation" id="yearofgraduation">
        <option value="">--select year--</option>
        <?php
	  	for($i=0; $i<15; $i++){
			$payyear = date("Y")-$i;
			echo "<option value='$payyear'";
			if($education->yearofgraduation==$payyear) echo "selected";
			echo ">$payyear</option>";
		}
	  ?>
      </select>
        <div id="inf_yearofgraduation" class="warn">* </div>
        OR<br>
        Expected year of graduation if STILL IN SCHOOL
        <select name="expectedgraduation" id="expectedgraduation">
          <option value="">--select year--</option>
          <?php
	  	for($i=0; $i<6; $i++){
			$payyear = date("Y")-$i;
			//echo "<option value='$payyear'>$payyear</option>";
			echo "<option value='$payyear'";
			if($education->expectedgraduation==$payyear) echo "selected";
			echo ">$payyear</option>";
		}
	  ?>
        </select></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td></td>
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
