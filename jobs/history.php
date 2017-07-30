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
	$_POST["imem_id"] = $_GET["search"];
	$_POST["memberid"] = $_GET["search"];
	$_POST["submit"]="Find";
}

if(isset($_POST["submit"])){
	if($_POST["submit"]=="Add" || $_POST["submit"]=="Edit"){
		//personal details
		$iid_no =(!empty($_POST["iid_no"])) ? $_POST["iid_no"] : 'NULL';
		$ctitle = !empty($_POST["ctitle"]) ? "'" . $_POST["ctitle"] . "'" : 'NULL';
		$cfname = !empty($_POST["cfname"]) ? "'" . $_POST["cfname"] . "'" : 'NULL';
		$cmname = !empty($_POST["cmname"]) ? "'" . $_POST["cmname"] . "'" : 'NULL';
		$csurname = !empty($_POST["csurname"]) ? "'" . $_POST["csurname"] . "'" : 'NULL';
		$dd_o_birth = !empty($_POST["dd_o_birth"]) ? "'" . $_POST["dd_o_birth"] . "'" : 'NULL';

	}
	switch($_POST["submit"]){
	case "Add":
		$sql="INSERT INTO main_personal (iid_no,ctitle,cfname,cmname,csurname,dd_o_birth,csex,cmaritalcode,cnationalitycode,ioccupation,
					gphoto,signature,cpobox,ctown,cphone,ieducation,mobile,email)
				VALUES($iid_no,$ctitle,$cfname,$cmname,$csurname,$dd_o_birth,$csex,$cmaritalcode,$cnationalitycode,$ioccupation,
					$gphoto,$signature,$cpobox,$ctown,$cphone,$ieducation,$mobile,$email)";
		$results=query($sql,$conn);
		$msg[0]="Sorry members record not created";
		$msg[1]="Member's record successfull created";
		AddSuccess($results,$conn,$msg);
		break;
	case "Edit":
		$memberid=$_POST["memberid"];
		$sql="UPDATE main_personal SET iid_no=$iid_no,ctitle=$ctitle,cfname=$cfname,cmname=$cmname,csurname=$csurname,dd_o_birth=$dd_o_birth,csex=$csex,
				cmaritalcode=$cmaritalcode,cnationalitycode=$cnationalitycode,ioccupation=$ioccupation,gphoto=$gphoto,signature=$signature,cpobox=$cpobox,
				ctown=$ctown,cphone=$cphone,ieducation=$ieducation,mobile=$mobile,email=$email
			WHERE id=$_POST[id]";
		$results=query($sql,$conn);
		$msg[0]="Sorry members record not updated";
		$msg[1]="Members record successfull updated";
		AddSuccess($results,$conn,$msg);
		break;
	case "Delete":
		$sql = "DELETE FROM main_personal WHERE id=$id";
		break;
	case "Find":
		$id=$_POST["imem_id"];
		$sql = "SELECT *
				FROM main_personal
				WHERE id=$id";
		$results=query($sql,$conn);
		$member = fetch_object($results);
		break;
	}
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>tarclink - members</title>
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
	//dp_cal  = new Epoch('epoch_popup','popup',document.getElementById('dd_o_birth'));
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
</head>
<body bgcolor="#FFFFFF">
<form action="history.php" method="post" name="history" id="history" enctype="multipart/form-data">
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
 <td colspan="3">&nbsp;</td>
 <tr><td colspan="3" align="center"><?php footer(); ?></td></tr>
</table>
</div>
</form>
</body>
</html>
