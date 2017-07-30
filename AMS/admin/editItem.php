<?php
/* var posting = $.post( url, { rentamt: $('#rentamt').val(), type: $('#type').val(),unitsno: $('#unitsno').val(),location: $('#location').val() } );*/
include('../config/dbConfig.php');
if($_SERVER["REQUEST_METHOD"] == "POST") {
$id = $_POST['id'];
$itemName = $_POST['itemName'];
$props = $_POST['props1'];
$username = $_POST['username'];


/*echo "Params: Rent ". $rentmat . " House type: " . $type ."Unit No: " . $unitsno . " Location " . $location. " recordid " . $recordid;*/



 if (!$db) {
    die();
    echo "Sign up failed. Database connection error.";
   }
  
   //$sql = "UPDATE ams_users set ID = '$ID, $query' WHERE ID = '$ID'";
   $sql = "UPDATE inventory set item='$itemName', property='$props' WHERE id = '$id'";
   if (mysqli_query($db, $sql)) {
   //	echo "Update was successfull ";
    header("Location: reports.php?username=$username");
   } else {
   	echo "Edit failed. Database connection error.";
   }
   
   mysqli_close($db);

 }