<?php

include('../config/dbConfig.php');
if($_SERVER["REQUEST_METHOD"] == "POST") {
	$title =$_POST['title'];
	$policy =$_POST['policy'];
	$username = $_POST['username'];
	
	

	
  if (!$db) {
    die();
    echo "An error occured.Please try again later";
   }
	
   $sql = "INSERT INTO policy(title,policy) VALUES('$title','$policy')";
   
   if (mysqli_query($db, $sql)) {
   	//echo "Successfully added property ";
   	header("Location: policy.php?username=$username");

   } else {
   	echo "Database connection error.";//.$db->error;
   }
   
   mysqli_close($db);

}
