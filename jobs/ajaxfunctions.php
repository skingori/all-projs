<?php
error_reporting(E_ALL & ~E_NOTICE);
session_start();

include_once ("includes/queryfunctions.php");
include_once ("includes/functions.php");
$conn=mysql_connect(HOST . ":" . PORT , USER, PASS);
mysql_select_db(DB);

switch ($_POST["button"]){
	case "CheckPass":
		$sql="SELECT pass FROM users WHERE userid=$_SESSION[userid]";
		$resultsuser=query($sql,$conn);
		$users = fetch_object($resultsuser);
		if(md5($_POST["oldpass"])!==$users->pass) echo "Old Password does not match.";
		free_result($resultsuser);
		break;
	case "CheckMail":
		$sql="SELECT email FROM users WHERE userid=$_SESSION[userid]";
		$resultsuser=query($sql,$conn);
		$users = fetch_object($resultsuser);
		if(md5($_POST["checkmail"])!==$users->email) echo "Mail does not exists in our database.";
		free_result($resultsuser);
		break;
	case "CheckLoginname":
		$sql="SELECT loginname FROM users WHERE loginname='$_POST[loginname]'";
		$resultsuser=query($sql,$conn);
		$users = fetch_object($resultsuser);
		$numrows = num_rows($resultsuser);
		if($numrows!==0) echo "Sorry Login name already taken up.";
		//if($numrows==0) echo "Login name does not exist";
		free_result($resultsuser);
		break;
}
?>
