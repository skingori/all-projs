<?php
include('../config/dbConfig.php');
/* var posting = $.post( url, { usernamesignup: $('#usernamesignup').val(), passwordsignup: $('#passwordsignup').val(),gender: $('#gender').val(),emailsignup: $('#emailsignup').val(),phonesignup: $('#phonesignup').val() } );*/

if($_SERVER["REQUEST_METHOD"] == "POST") {
	$username =$_POST['usernamesignup'];
	$password =$_POST['passwordsignup'];
	$gender =$_POST['gender'];
	$email =$_POST['emailsignup'];
	$phone = $_POST['phonesignup'];
  $uid = $_POST['username'];
	
  if (!$db) {
    die();
    echo "Sign up failed. Database connection error.";
   }
	
   $sql = "INSERT INTO `ams_users`(user_name, password, role, email, phone_number,gender) VALUES
   		('$username','$password','normal','$email','$phone','$gender')";
   
   if (mysqli_query($db, $sql)) {
   	echo "User successfully added";
    header("Location:../admin/usermanagement.php?username=$uid");
   } else {
   	echo "Sign up failed. Database connection error.";
   }
   
   mysqli_close($db);

}