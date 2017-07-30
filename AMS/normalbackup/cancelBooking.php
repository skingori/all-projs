<?php
error_reporting(0);
include('../config/dbConfig.php');

if($_SERVER["REQUEST_METHOD"] == "POST") {
  $id =$_POST['record'];
  
  $houseID= $_POST['houseid'];
  
 // $availableunits = $_POST['units'];
  $date = date("y-m-d");
  $username= $_POST['username'];
  $comment =$_POST['comment'];
  $units = "";
  
  if (!$db) {
    die();
    echo "Sign up failed. Database connection error.";
   }
  
   //$sql = "UPDATE ams_users set ID = '$ID, $query' WHERE ID = '$ID'";
   $sql = "UPDATE booking set status ='cancelled', comment = '$comment' WHERE booking_id = '$id'";
   if (mysqli_query($db, $sql)) {
    
   
    $getUnits = "SELECT * FROM houses WHERE house_id = '$houseID'";
     $result = mysqli_query($db,$getUnits);
    
      while($row = mysqli_fetch_assoc($result)){

             
           $units = $row['available_units'];

            //Run an update

        }
        $add= $units++;

    $sql2 = "UPDATE houses set available_units ='$units' WHERE house_id = '$houseID'";

    mysqli_query($db, $sql2);
    
    header("Location:booking.php?username=$username");

    echo "date ".$comment;
  
  
   } else {
    echo "Edit failed. Database connection error." . $db->error;
   }
   
   mysqli_close($db);

}