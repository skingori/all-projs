<?php
/* var posting = $.post( url, { rentamt: $('#rentamt').val(), type: $('#type').val(),unitsno: $('#unitsno').val(),location: $('#location').val() } );*/
include('../config/dbConfig.php');
if($_SERVER["REQUEST_METHOD"] == "POST") {
$rentamt = $_POST['rentamt'];
$type = $_POST['typeedit'];
$unitsno = $_POST['unitsno'];
$location = $_POST['locationedit'];
$recordid = $_POST['recordidedit'];

/*echo "Params: Rent ". $rentmat . " House type: " . $type ."Unit No: " . $unitsno . " Location " . $location. " recordid " . $recordid;*/

 if (!$db) {
    die();
    echo "Sign up failed. Database connection error.";
   }
  
   //$sql = "UPDATE ams_users set ID = '$ID, $query' WHERE ID = '$ID'";
   $sql = "UPDATE houses set rentamt='$rentamt', housetype='$type',unitsno='$unitsno',Location='$location' WHERE house_id = '$recordid'";
   if (mysqli_query($db, $sql)) {
   	echo "Update was successfull ";
   } else {
   	echo "Edit failed. Database connection error.";
   }
   
   mysqli_close($db);

 }

