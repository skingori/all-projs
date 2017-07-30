<?php
/*$.post( url, { house_name: $('#hous_name').val(), owner: $('#owner').val(),type: $('#type').val(),units: $('#units').val(),rent: $('#rent').val(),location: $('#location').val(),file: $('#file').val() } );*/

include('../config/dbConfig.php');
if($_SERVER["REQUEST_METHOD"] == "POST") {
	$house_name =$_POST['house_name'];
	$owner =$_POST['owner'];
	$units =$_POST['units'];
	$rent =$_POST['rent'];
	$location = $_POST['location'];
	$file_name = $_FILES['image']['name'];
	$type = $_POST['type'];
	$file_tmp =$_FILES['image']['tmp_name'];
	move_uploaded_file($file_tmp,"images/".$file_name);


	$img = addslashes(file_get_contents("images/".$file_name));
	

	
  if (!$db) {
    die();
    echo "An error occured.Please try again later";
   }
	
   $sql = "INSERT INTO houses(housename,owner, unitsno, rentamt, Location, image,housetype,available_units) VALUES('$house_name','$owner','$units','$rent','$location','$img','$type','$units')";
   
   if (mysqli_query($db, $sql)) {
   	//echo "Successfully added property ";
   	header("Location: propertymanagement.php");

   } else {
   	echo "Database connection error.";//.$db->error;
   }
   
   mysqli_close($db);

}

