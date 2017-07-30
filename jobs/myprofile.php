<?php
error_reporting(E_ALL & ~E_NOTICE);
session_start();

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
	if($_POST["submit"]=="Add" || $_POST["submit"]=="Edit"){
		//personal details
		$iid_no =(!empty($_POST["iid_no"])) ? $_POST["iid_no"] : 'NULL';
		$ctitle = !empty($_POST["ctitle"]) ? "'" . $_POST["ctitle"] . "'" : 'NULL';
		$cfname = !empty($_POST["cfname"]) ? "'" . $_POST["cfname"] . "'" : 'NULL';
		$cmname = !empty($_POST["cmname"]) ? "'" . $_POST["cmname"] . "'" : 'NULL';
		$csurname = !empty($_POST["csurname"]) ? "'" . $_POST["csurname"] . "'" : 'NULL';
		$dd_o_birth = !empty($_POST["dd_o_birth"]) ? "'" . $_POST["dd_o_birth"] . "'" : 'NULL';
		$csex = !empty($_POST["csex"]) ? "'" . $_POST["csex"] . "'" : 'NULL';
		$cmaritalcode = !empty($_POST["cmaritalcode"]) ? "'" . $_POST["cmaritalcode"] . "'" : 'NULL';
		$cnationalitycode = !empty($_POST["cnationalitycode"]) ? "'" . $_POST["cnationalitycode"] . "'" : 'NULL';
		$ioccupation = !empty($_POST["ioccupation"]) ? "'" . $_POST["ioccupation"] . "'" : 'NULL';
		$gphoto = !empty($_POST["gphoto"]) ? "'" . $_POST["gphoto"] . "'" : 'NULL';
		$signature = !empty($_POST["signature"]) ? "'" . $_POST["signature"] . "'" : 'NULL';
		$cpobox = !empty($_POST["cpobox"]) ? "'" . $_POST["cpobox"] . "'" : 'NULL';
		$ctown = !empty($_POST["ctown"]) ? "'" . $_POST["ctown"] . "'" : 'NULL';
		$cphone = !empty($_POST["cphone"]) ? "'" . $_POST["cphone"] . "'" : 'NULL';
		$ieducation = !empty($_POST["ieducation"]) ? "'" . $_POST["ieducation"] . "'" : 'NULL';
		$mobile = !empty($_POST["mobile"]) ? "'" . $_POST["mobile"] . "'" : 'NULL';
		$email = !empty($_POST["email"]) ? "'" . $_POST["email"] . "'" : 'NULL';
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
		$sql = "SELECT * FROM main_personal WHERE id=$id";
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
<form action="myprofile.php" method="post" name="myprofile" id="myprofile" enctype="multipart/form-data">
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
