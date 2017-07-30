<?php
/* var posting = $.post( url, { rentamt: $('#rentamt').val(), type: $('#type').val(),unitsno: $('#unitsno').val(),location: $('#location').val() } );*/
include('../config/dbConfig.php');
if($_SERVER["REQUEST_METHOD"] == "POST") {

$owner_idel = $_POST['owner_idel'];

/*echo "Params: Rent ". $rentmat . " House type: " . $type ."Unit No: " . $unitsno . " Location " . $location. " recordid " . $recordid;*/

 if (!$db) {
    die();
    echo "Sign up failed. Database connection error.";
   }
  
   
   $sql = "DELETE FROM propertyowners WHERE owner_id = '$owner_idel'";
   if (mysqli_query($db, $sql)) {
   	//echo "Record successfully deleted ";
    header("Location: propertymanagement.php");
   } else {
   	echo "Delete failed. Database connection error.";
   }
   
   mysqli_close($db);

 }