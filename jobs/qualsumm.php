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
	$_POST["submit"]="Find";
}

if(isset($_POST["submit"])){
	if($_POST["submit"]=="Save & Continue" || $_POST["submit"]=="Update & Continue"){
		//personal details
		$applicantid =(!empty($_SESSION["userid"])) ? $_SESSION["userid"] : 'NULL';
		$qualsumm = !empty($_POST["qualsumm"]) ? "'" . $_POST["qualsumm"] . "'" : 'NULL';
	}
	switch($_POST["submit"]){
	case "Save & Continue":
		$sql="INSERT INTO applicant (qualsumm) VALUES($qualsumm)
				ON DUPLICATE KEY UPDATE qualsumm=$qualsumm";
		$results=query($sql,$conn);
		$msg[0]="Sorry summary of qualifications not added";
		$msg[1]="Summary of qualifications successfull added";
		AddSuccess($results,$conn,$msg);
		echo "<meta http-equiv=\"Refresh\" content=\"2;url=./profexp.php\">";
		break;
	case "Update & Continue":
		$memberid=$_POST["memberid"];
		$sql="UPDATE applicant SET qualsumm=$qualsumm WHERE id=$applicantid";
		$results=query($sql,$conn);
		$msg[0]="Sorry summary of qualifications not updated";
		$msg[1]="Summary of qualifications successfull updated";
		AddSuccess($results,$conn,$msg);
		echo "<meta http-equiv=\"Refresh\" content=\"2;url=./profexp.php\">";
		break;
	case "Delete":
		$sql = "DELETE FROM applicant WHERE id=$id";
		break;
	case "Find":
		$sql = "SELECT id,applicantid,qualsumm
				FROM applicant
				WHERE id=$id";
		$results=query($sql,$conn);
		$applicant = fetch_object($results);
		break;
	case "Skip>>":
		echo "<meta http-equiv=\"Refresh\" content=\"0;url=./profexp.php\">";
		break;
	case "<<Back":
		echo "<meta http-equiv=\"Refresh\" content=\"0;url=./careerobjective.php\">";
		break;
	}
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>tarclink - qualification summary</title>
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
</head>
<body bgcolor="#FFFFFF">
<form action="qualsumm.php" method="post" name="qualsumm" id="qualsumm" enctype="multipart/form-data">
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
 <td colspan="2" valign="top"><table border="0" align="center" width="100%">
    <tr>
      <th colspan="3" bgcolor="#CCCCCC"><strong>SUMMARY OF QUALIFICATIONS </strong></th>
    </tr>
    <tr>
      <td colspan="2" align="center"><?php $conn=db_connect(HOST,USER,PASS,DB,PORT);
	$querystr="SELECT id,applicantid,qualsumm FROM applicant WHERE id=$_SESSION[userid]";
	$results=query($querystr,$conn);
	//check if data is returned
	echo "<table border=\"0\" width=\"100%\">";
	echo "<tr class=\"boldtext\"><td>Summary of Qualifications</td><td>Action</td></tr>";
	while ($summqual = fetch_object($results)){
		//alternate row colour
		$j++;
		if($j%2==1){
			echo "<tr id=\"row$j\" onmouseover=\"javascript:setColor('$j')\" onmouseout=\"javascript:origColor('$j')\" bgcolor=\"#CCCCCC\">";
		}else{
			echo "<tr id=\"row$j\" onmouseover=\"javascript:setColor('$j')\" onmouseout=\"javascript:origColor('$j')\" bgcolor=\"#EEEEF8\">";
		}
			echo "<td align=\"left\"><input name=\"id\" type=\"hidden\" value=\"$summqual->id\">$summqual->qualsumm</td>
				<td align=\"left\"><a name=\"editobjective\" href=\"qualsumm.php?search=$summqual->id&action=Find\">Edit </a>|
				<a name=\"deleteobjective\" href=\"qualsumm.php?search=$summqual->id&action=Delete\" onClick=\"Javascript:return confirm('Are you sure you want Delete this Record?','Confirm Delete')\">Delete</a></td>
			</tr>";
	}
	echo "</table>";
?></td>
    </tr>
    <tr>
      <td>Summary of qualifications</td>
      <td><textarea name="qualsumm" id="qualsumm" cols="45" rows="8"><?php echo $applicant->qualsumm; ?></textarea></td>

    </tr>
    <tr align="center">
      <td colspan="2"><input type="submit" name="submit" value="<<Back">
        <input type="submit" name="submit" value="<?php echo $_GET["action"]=="Find" ? "Update & Continue" : "Save & Continue"; ?>"/>
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
