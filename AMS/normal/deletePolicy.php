<?php
/* var posting = $.post( url, { rentamt: $('#rentamt').val(), type: $('#type').val(),unitsno: $('#unitsno').val(),location: $('#location').val() } );*/
include('../config/dbConfig.php');
if($_SERVER["REQUEST_METHOD"] == "POST") {

$id = $_POST['id'];
$username=$_POST['uid'];

/*echo "Params: Rent ". $rentmat . " House type: " . $type ."Unit No: " . $unitsno . " Location " . $location. " recordid " . $recordid;*/

 if (!$db) {
    die();
    echo "Sign up failed. Database connection error.";
   }
  
   
   $sql = "DELETE FROM policy WHERE id = '$id'";
   if (mysqli_query($db, $sql)) {
   	//echo "Record successfully deleted ";
    header("Location: reports.php?username=$username");
   } else {
   	echo "Delete failed. Database connection error.";
   }
   
   mysqli_close($db);

 }