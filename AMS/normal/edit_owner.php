<?php
/* $.post( url, { owner_idedit: $('#owner_idedit').val(), fullnamesedit: $('#fullnamesedit').val(),accnumberedit: $('#accnumberedit').val(),mstatusedit: $('#mstatusedit').val(),telephoneedit: $('#telephoneedit').val(),bank_branchedit: $('#bank_branchedit').val(),bank_nameedit: $('#bank_nameedit').val() } );*/

include('../config/dbConfig.php');
if($_SERVER["REQUEST_METHOD"] == "POST") {
$owner_idedit = $_POST['owner_idedit'];
$fullnamesedit = $_POST['fullnamesedit'];
$accnumberedit = $_POST['accnumberedit'];
$mstatusedit = $_POST['mstatusedit'];
$telephoneedit = $_POST['telephoneedit'];
$bank_branchedit = $_POST['bank_branchedit'];
$bank_nameedit = $_POST['bank_nameedit'];

/*echo "Params: Rent ". $rentmat . " House type: " . $type ."Unit No: " . $unitsno . " Location " . $location. " recordid " . $recordid;*/

 if (!$db) {
    die();
    echo "Sign up failed. Database connection error.";
   }
  
   //$sql = "UPDATE ams_users set ID = '$ID, $query' WHERE ID = '$ID'";
   $sql = "UPDATE propertyowners set fullnames='$fullnamesedit', mstatus='$mstatusedit',telephone='$telephoneedit',accnumber='$accnumberedit',bank_name='$bank_nameedit', bank_branch = '$bank_branchedit' WHERE owner_id = '$owner_idedit'";
   if (mysqli_query($db, $sql)) {
   	echo "Update was successfull ";
    //header(Location:"propertymanagement.php")
   } else {
   	echo "Edit failed. Database connection error.";
   }
   
   mysqli_close($db);

 }