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
		$langid =(!empty($_POST["langid"])) ? $_POST["langid"] : 'NULL';
		$applicantid =(!empty($_SESSION["userid"])) ? $_SESSION["userid"] : 'NULL';
		$language = !empty($_POST["language"]) ? "'" . $_POST["language"] . "'" : 'NULL';
		$orallevel =(!empty($_POST["orallevel"])) ? "'" . $_POST["orallevel"] . "'" : 'NULL';
		$writtenlevel =(!empty($_POST["writtenlevel"])) ? "'" . $_POST["writtenlevel"] . "'" : 'NULL';
	}
	switch($_POST["submit"]){
	case "Save & add another":
		$sql="INSERT INTO language (applicantid,language,orallevel,writtenlevel)
			VALUES($applicantid,$language,$orallevel,$writtenlevel)";
		$results=query($sql,$conn);
		$msg[0]="Sorry languade details not added";
		$msg[1]="Language details successfull added";
		AddSuccess($results,$conn,$msg);
		break;
	case "Update & Continue":
		$sql="UPDATE language SET applicantid=$applicantid,language=$language,orallevel=$orallevel,writtenlevel=$writtenlevel WHERE id=$_POST[langid]";
		$results=query($sql,$conn);
		$msg[0]="Sorry language details not updated";
		$msg[1]="Language details successfull updated";
		AddSuccess($results,$conn,$msg);
		break;
	case "Delete":
		$sql = "DELETE FROM language WHERE id=$id";
		$results=query($sql,$conn);
		$msg[0]="Sorry language details not deleted";
		$msg[1]="Language details successfull deleted";
		AddSuccess($results,$conn,$msg);
		break;
	case "Find":
		$sql = "SELECT * FROM language WHERE id=$id";
		$results=query($sql,$conn);
		$language = fetch_object($results);
		break;
	case "Skip>>":
		echo "<meta http-equiv=\"Refresh\" content=\"0;url=./reference.php\">";
		break;
	case "<<Back":
		echo "<meta http-equiv=\"Refresh\" content=\"0;url=./profmem.php?search=$_SESSION[userid]\">";
		break;
	}
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>tarclink - language</title>
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
	if (!validateCheckbox(document.forms.language.writtenlevel, 'inf_writtenlevel', 1)) errs += 1;
	if (!validateCheckbox(document.forms.language.orallevel, 'inf_orallevel', 1)) errs += 1;
	if (!validateSelect (document.forms.language.language,'inf_language',1)) errs += 1;

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
<form action="language.php" method="post" name="language" id="language" enctype="multipart/form-data">
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
      <th colspan="3" bgcolor="#CCCCCC"><strong>LANGUAGE</strong></th>
    </tr>
    <tr>
      <td colspan="2" align="center">
<?php $conn=db_connect(HOST,USER,PASS,DB,PORT);
	$querystr="SELECT id,applicantid,language,orallevel,writtenlevel
		FROM language
		WHERE language.applicantid =  $_SESSION[userid]";
	$results=query($querystr,$conn);
	//check if data is returned
	echo "<table border=\"0\" width=\"100%\">";
	echo "<tr class=\"boldtext\"><td>Language</td><td>Oral</td><td>Written</td><td>Action</td></tr>";
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
				<td align=\"left\"><a name=\"editlanguage\" href=\"language.php?search=$lang->id&action=Find\">Edit </a>|
				<a name=\"deletelanguage\" href=\"language.php?search=$lang->id&action=Delete\" onClick=\"Javascript:return confirm('Are you sure you want Delete this Record?','Confirm Delete')\">Delete</a></td>
			</tr>";
	}
	echo "</table>";
?></td>
    </tr>
    <tr>
      <td colspan="2"><em>Fields marked by <span class="warn">*</span> are required fields and must be filled in.</em></td>
    </tr>
    <tr>
      <td>Language
        <input type="hidden" name="langid" value=<?php echo $language->id; ?>></td>
      <td>
	  <select name="language" id="language">
        <option value="">--select country--</option>
        <?php populate_select("languages","language","language",$language->language); ?>
      </select>
	  <div id="inf_language" class="warn">* </div>
	  </td>
    </tr>
    <tr>
      <td colspan="2">Level</td>
    </tr>
    <tr>
      <td>Oral</td>
      <td>
        <label>
        <input type="radio" name="orallevel" value="Beginner" <?php if($language->orallevel=='Beginner') echo 'checked'?>>
  Beginner</label>
        <label>
        <input type="radio" name="orallevel" value="Intermediate" <?php if($language->orallevel=='Intermediate') echo 'checked'?>>
  Intermediate</label>
        <label>
        <input type="radio" name="orallevel" value="Advanced (Fluent)" <?php if($language->orallevel=='Advanced (Fluent)') echo 'checked'?>>
  Advanced (Fluent)</label>
        <div id="inf_orallevel" class="warn">* </div>
        </td>
    </tr>
    <tr>
      <td>Written</td>
      <td><label>
        <input type="radio" name="writtenlevel" value="Beginner" <?php if($language->writtenlevel=='Beginner') echo 'checked'?>>
  Beginner</label>
        <label>
        <input type="radio" name="writtenlevel" value="Intermediate" <?php if($language->writtenlevel=='Intermediate') echo 'checked'?>>
  Intermediate</label>
        <label>
        <input type="radio" name="writtenlevel" value="Advanced (Fluent)" <?php if($language->writtenlevel=='Advanced (Fluent)') echo 'checked'?>>
  Advanced (Fluent)</label>
        <div id="inf_writtenlevel" class="warn">* </div>
	  </td>
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
