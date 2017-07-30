<?php

/*$.post( url, { apartment_id: $('#apartment_id').val(), fullnamebook: $('#fullnamebook').val(),natidbook: $('#natidbook').val(),telephonebook: $('#telephonebook').val(),depobook: $('#depobook').val(),mpesabook: $('#mpesabook').val() } );*/

include('../config/dbConfig.php');
if($_SERVER["REQUEST_METHOD"] == "POST") {
	$apartment_id =$_POST['apartment_id'];
	$fullnamebook =$_POST['fullnamebook'];
	$natidbook =$_POST['natidbook'];
	$telephonebook =$_POST['telephonebook'];
	$depobook = $_POST['depobook'];
	$mpesabook = $_POST['mpesabook'];
	$username = $_POST['username'];
   $date = date("y-m-d");
	
	$units = "";
  $rentamt = "";
  $remaining = "";

	
  if (!$db) {
    die();
    echo "An error occured.Please try again later";
   }
	
   $sql = "INSERT INTO booking(apartment_id,full_names, id_number, deposit, phone_number, mpesa_receipt_no,username,date_booked) VALUES('$apartment_id','$fullnamebook','$natidbook','$telephonebook','$depobook','$mpesabook','$username','$date')";
   
   if (mysqli_query($db, $sql)) {
   	//echo "Apartment booked successfully ";
   	//header("Location: propertymanagement.php");

   	//Get no of units for that id
     $getUnits = "SELECT * FROM houses WHERE house_id = '$apartment_id'";
     $result = mysqli_query($db,$getUnits);
    
      while($row = mysqli_fetch_assoc($result)){

             
           $units = $row['available_units'];
          $rentamt = $row['rentamt'];
            //Run an update

        }
        //Run an update
        $diff = $units-1;
        $update = "UPDATE houses set available_units ='$diff' WHERE house_id = '$apartment_id' ";
        if(mysqli_query($db, $update)){
        	//echo "Apartment booked successfully";
          //run update query to update remaining_amount field
          $remaining = $rentamt - $depobook;
          if($remaining < 0){
            $remaining = 0;

          }

           $updateRem = "UPDATE booking set remaining_amount ='$remaining' WHERE mpesa_receipt_no = '$mpesabook' ";
           mysqli_query($db, $updateRem);

          header("Location:propertymanagement.php?username=$username");

        }else{
        	echo "Database connection error.";
        }

   } else {
   	echo "Database connection error.";//.$db->error;
   }
   
   mysqli_close($db);

}



