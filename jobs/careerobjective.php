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
	$_POST["submit"]=$_GET["action"];
}


if(isset($_POST["submit"])){
	if($_POST["submit"]=="Save & Continue" || $_POST["submit"]=="Update & Continue"){
		//personal details
		$id =(!empty($_POST["id"])) ? $_POST["id"] : 'NULL';
		$applicantid =(!empty($_SESSION["userid"])) ? $_SESSION["userid"] : 'NULL';
		$objective = !empty($_POST["objective"]) ? "'" . $_POST["objective"] . "'" : 'NULL';
		$carrierlevelid =(!empty($_POST["carrierlevelid"])) ? $_POST["carrierlevelid"] : 'NULL';
	}
	switch($_POST["submit"]){
	case "Save & Continue":
		$sql="INSERT INTO objective (applicantid,objective,carrierlevelid) VALUES($applicantid,$objective,$carrierlevelid)";
		$results=query($sql,$conn);
		$msg[0]="Sorry career objective not added";
		$msg[1]="Career objective successfull added";
		AddSuccess($results,$conn,$msg);
		echo "<meta http-equiv=\"Refresh\" content=\"2;url=./qualsumm.php\">";
		break;
	case "Update & Continue":
		$sql="UPDATE objective SET applicantid=$applicantid,objective=$objective,carrierlevelid=$carrierlevelid	WHERE id=$_POST[id]";
		$results=query($sql,$conn);
		$msg[0]="Sorry career objective not updated";
		$msg[1]="Career objective successfull updated";
		AddSuccess($results,$conn,$msg);
		echo "<meta http-equiv=\"Refresh\" content=\"2;url=./qualsumm.php\">";
		break;
	case "Delete":
		$sql = "DELETE FROM objective WHERE id=$id";
		$results=query($sql,$conn);
		$msg[0]="Sorry career objective not deleted";
		$msg[1]="Career objective successfull deleted";
		AddSuccess($results,$conn,$msg);
		break;
	case "Find":
		$sql = "SELECT * FROM objective WHERE id=$id";
		$results=query($sql,$conn);
		$objective = fetch_object($results);
		break;
	case "Skip>>":
		echo "<meta http-equiv=\"Refresh\" content=\"0;url=./qualsumm.php\">";
		break;
	case "<<Back":
		echo "<meta http-equiv=\"Refresh\" content=\"0;url=./personaldata.php?search=$_SESSION[userid]\">";
		break;
	}
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>tarclink - career objectives</title>
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
	if (!validateSelect (document.forms.careerobjective.carrierlevelid,'inf_careerlevel',1)) errs += 1;

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
</head>
<body bgcolor="#FFFFFF">
<form action="careerobjective.php" method="post" name="careerobjective" id="careerobjective" enctype="multipart/form-data">
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
      <th colspan="3" bgcolor="#CCCCCC"><strong>CAREER OBJECTIVE </strong></th>
    </tr>
    <tr>
      <td colspan="2" align="center">
<?php $conn=db_connect(HOST,USER,PASS,DB,PORT);
	$querystr="SELECT objective.id,objective.objective,careerlevel.careerlevel
		FROM objective
		Left Join careerlevel ON objective.`carrierlevelid` = careerlevel.careerid
		WHERE
		objective.applicantid =  $_SESSION[userid]";
	$results=query($querystr,$conn);
	//check if data is returned
	echo "<table border=\"0\" width=\"100%\">";
	echo "<tr class=\"boldtext\"><td>Career Objective</td><td>Career Level</td><td>Action</td></tr>";
	while ($careerobj = fetch_object($results)){
		//alternate row colour
		$j++;
		if($j%2==1){
			echo "<tr id=\"row$j\" onmouseover=\"javascript:setColor('$j')\" onmouseout=\"javascript:origColor('$j')\" bgcolor=\"#CCCCCC\">";
		}else{
			echo "<tr id=\"row$j\" onmouseover=\"javascript:setColor('$j')\" onmouseout=\"javascript:origColor('$j')\" bgcolor=\"#EEEEF8\">";
		}
			echo "<td align=\"left\"><input name=\"id\" type=\"hidden\" value=\"$careerobj->id\">$careerobj->objective</td>
				<td align=\"left\">$careerobj->careerlevel</td>
				<td align=\"left\"><a name=\"editobjective\" href=\"careerobjective.php?search=$careerobj->id&action=Find\">Edit </a>|
				<a name=\"deleteobjective\" href=\"careerobjective.php?search=$careerobj->id&action=Delete\" onClick=\"Javascript:return confirm('Are you sure you want Delete this Record?','Confirm Delete')\">Delete</a></td>
			</tr>";
	}
	echo "</table>";
?></td>
    </tr>
    <tr>
      <td colspan="2"><em>Fields marked by <span class="warn">*</span> are required fields and must be filled in.</em></td>
    </tr>
    <tr>
      <td>Objective</td>
      <td><textarea name="objective" id="objective" cols="45" rows="8"><?php echo $objective->objective; ?></textarea></td>

    </tr>
    <tr>
      <td>Career Level </td>
      <td><select name="carrierlevelid">
        <option value="">--select career level--</option>
        <?php populate_select("careerlevel","careerid","careerlevel",$objective->carrierlevelid);?>
      </select>
        <div id="inf_careerlevel" class="warn">* </div>
		</td>
    </tr>
    <tr align="center">
      <td colspan="2"><input type="submit" name="submit" value="<<Back">
        <input type="submit" name="submit" value="<?php echo $_GET["action"]=="Find" ? "Update & Continue" : "Save & Continue"; ?>" onclick="return validateOnSubmit();"/>
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
