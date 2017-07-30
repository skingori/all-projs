<?php
include('../config/dbConfig.php');

if($_SERVER["REQUEST_METHOD"] == "POST") {
  $id =$_POST['record'];
  $username= $_POST['username'];
  $date = date("y-m-d");
  
  if (!$db) {
    die();
    echo "Sign up failed. Database connection error.";
   }
  
   //$sql = "UPDATE ams_users set ID = '$ID, $query' WHERE ID = '$ID'";
   $sql = "UPDATE booking set status ='booked', check_in_date = '$date' WHERE booking_id = '$id'";
   if (mysqli_query($db, $sql)) {
    header("Location:manageBooking.php?username=$username");
   // echo "Successfully edited ";
   } else {
    echo "Edit failed. Database connection error.";
   }
   
   mysqli_close($db);

}