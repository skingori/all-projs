<?php
include('../config/dbConfig.php');
if($_SERVER["REQUEST_METHOD"] == "POST") {
$username =$_POST['username'];
$password =$_POST['password'];
$selected =$_POST['selected'];


$sql = "SELECT id FROM ams_users WHERE user_name = '$username' and password = '$password' and role ='$selected'";
$result = mysqli_query($db,$sql);
$row = mysqli_fetch_array($result,MYSQLI_ASSOC);

$count = mysqli_num_rows($result);

// If result matched $myusername and $mypassword, table row must be 1 row

if($count == 1 && $selected =="admin") {
	//session_register("username");
	//$_SESSION['username'] = $username;
	 
	//header("location:index.php");
	
	echo "admin";
        
}elseif($count == 1 && $selected =="normal") {
	//session_register("username");
	//$_SESSION['username'] = $username;
	 
	//header("location:index.php");
	
	echo "normal";
        
}elseif($count == 1 && $selected =="guest") {
	//session_register("username");
	//$_SESSION['username'] = $username;
	 
	//header("location:index.php");
	
	echo "guest";
        
}else {
	echo "Authentication with the selected role ".$selected. " failed";
}
}



