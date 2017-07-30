<?php



include('../config/dbConfig.php');

if($_SERVER["REQUEST_METHOD"] == "POST") {
	$username =$_POST['name'];
	$phone =$_POST['phone'];
	$email =$_POST['email'];
	$role = $_POST['role'];
  $id = $_POST['id'];
  $uid = $_POST['uid'];
	
  if (!$db) {
    die();
    echo "Sign up failed. Database connection error.";
   }
  
   //$sql = "UPDATE ams_users set ID = '$ID, $query' WHERE ID = '$ID'";
   $sql = "UPDATE AMS_USERS set user_name='$username', phone_number='$phone',role='$role',email='$email' WHERE ID = '$id'";
   if (mysqli_query($db, $sql)) {
    header("Location:usermanagement.php?username=$uid");
   //	echo "Successfully edited ";
   } else {
   	echo "Edit failed. Database connection error.". $sql;
   }
   
   mysqli_close($db);

}
