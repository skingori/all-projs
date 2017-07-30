<?php
include('../config/dbConfig.php');
if($_SERVER["REQUEST_METHOD"] == "POST") {
	$username =$_POST['username'];
	$password =$_POST['password'];
	$gender =$_POST['gender'];
	$email =$_POST['email'];
	$phone = $_POST['phone'];
	
  if (!$db) {
    die();
    echo "Sign up failed. Database connection error.";
   }
	
   $sql = "INSERT INTO `ams_users`(user_name, password, role, email, phone_number,gender) VALUES
   		('$username','$password','guest','$email','$phone','$gender')";
   
   if (mysqli_query($db, $sql)) {
   	echo "Congrats. You have successfully signed up. Login with your username and password";
   } else {
   	echo "Sign up failed. Database connection error.";
   }
   
   mysqli_close($db);

}