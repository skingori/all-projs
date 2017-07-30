<?php

/*$.post( url, { name: $('#name').val(), marital: $('#marital').val(),phoneno: $('#phoneno').val(),address: $('#address').val(),bank_name: $('#bank_name').val(),bank_branch: $('#bank_branch').val(),accnumber: $('#accnumber').val() } );*/

include('../config/dbConfig.php');
if($_SERVER["REQUEST_METHOD"] == "POST") {
	$name =$_POST['name'];
	$marital =$_POST['marital'];
	$phoneno =$_POST['phoneno'];
	$bank_name =$_POST['bank_name'];
	$bank_branch = $_POST['bank_branch'];
	$accnumber = $_POST['accnumber'];
	$address = $_POST['address'];
	
  if (!$db) {
    die();
    echo "An error occured.Please try again later";
   }
	
   $sql = "INSERT INTO propertyowners(fullnames, mstatus,address, telephone, accnumber, bank_name, bank_branch) VALUES('$name','$marital','$address','$phoneno','$accnumber','$bank_name','$bank_branch')";
   
   if (mysqli_query($db, $sql)) {
   	echo "Successfully added property owner";
   } else {
   	echo "Database connection error.";
   }
   
   mysqli_close($db);

}

