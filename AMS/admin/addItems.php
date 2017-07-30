<?php


include('../config/dbConfig.php');
if($_SERVER["REQUEST_METHOD"] == "POST") {
  $item =$_POST['item'];
  $props =$_POST['props'];
  $username = $_POST['username'];
  
  

  
  if (!$db) {
    die();
    echo "An error occured.Please try again later";
   }
  
   $sql = "INSERT INTO inventory(item,property) VALUES('$item','$props')";
   
   if (mysqli_query($db, $sql)) {
    //echo "Successfully added property ";
    header("Location: reports.php?username=$username");

   } else {
    echo "Database connection error.";//.$db->error;
   }
   
   mysqli_close($db);

}