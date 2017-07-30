<?php
/* var posting = $.post( url, { rentamt: $('#rentamt').val(), type: $('#type').val(),unitsno: $('#unitsno').val(),location: $('#location').val() } );*/
include('../config/dbConfig.php');
if($_SERVER["REQUEST_METHOD"] == "POST") {
$id = $_POST['id'];
$title = $_POST['title'];
$policy = $_POST['policy'];
$username = $_POST['uid'];


/*echo "Params: Rent ". $rentmat . " House type: " . $type ."Unit No: " . $unitsno . " Location " . $location. " recordid " . $recordid;*/

 if (!$db) {
    die();
    echo "Sign up failed. Database connection error.";
   }
  
   //$sql = "UPDATE ams_users set ID = '$ID, $query' WHERE ID = '$ID'";
   $sql = "UPDATE policy set title='$title', policy='$policy' WHERE id = '$id'";
   if (mysqli_query($db, $sql)) {
   //	echo "Update was successfull ";
    header("Location: policy.php?username=$username");
   } else {
   	echo "Edit failed. Database connection error.";
   }
   
   mysqli_close($db);

 }