<?php
/* var posting = $.post( url, { rentamt: $('#rentamt').val(), type: $('#type').val(),unitsno: $('#unitsno').val(),location: $('#location').val() } );*/
include('../config/dbConfig.php');
if($_SERVER["REQUEST_METHOD"] == "POST") {

$recordid = $_POST['recordiddelete'];

/*echo "Params: Rent ". $rentmat . " House type: " . $type ."Unit No: " . $unitsno . " Location " . $location. " recordid " . $recordid;*/

 if (!$db) {
    die();
    echo "Sign up failed. Database connection error.";
   }
  
   
   $sql = "DELETE FROM houses WHERE house_id = '$recordid'";
   if (mysqli_query($db, $sql)) {
   	echo "Record successfully deleted ";
   } else {
   	echo "Delete failed. Database connection error.";
   }
   
   mysqli_close($db);

 }
