<?php

/* var posting = $.post( url, { apartment_idpay: $('#apartment_idpay').val(), bookedby: $('#bookedby').val(),amntowedmpesa: $('#amntowedmpesa').val(),telephonepay: $('#telephonepay').val(),amntowed: $('#amntowed').val(),booking_idpay: $('#booking_idpay').val(),usernamepay: $('#usernamepay').val() ,amntrem: $('#amntrem') } );*/



include('../config/dbConfig.php');
if($_SERVER["REQUEST_METHOD"] == "POST") {
	$apartment_idpay =$_POST['apartment_idpay'];
	$bookedby =$_POST['bookedby'];
	$amntowedmpesa =$_POST['amntowedmpesa'];
	$telephonepay =$_POST['telephonepay'];
	$amntowed = $_POST['amntowed'];
	$booking_idpay = $_POST['booking_idpay'];
	$username = $_POST['usernamepay'];
  $amntrem = $_POST['amntrem'];
   $date = date("y-m-d");
   $bal = $amntrem - $amntowed;
	
	$paid = "";
  if($amntowed < $amntrem){

    //echo 'Please pay the full balance owed of Ksh: ' .$amntrem;

              header("Location:booking.php?username=$username&rem=$bal&success=1");

  }else{

	
  if (!$db) {
    die();
    echo "An error occured.Please try again later";
   }
	
   $sql = "INSERT INTO payment(apartment_id, amount, phone_number, mpesa_receipt,username,payment_date,booking_id,balance) VALUES($apartment_idpay,'$amntowed','$telephonepay','$amntowedmpesa','$username','$date',$booking_idpay,$bal)";
   
   if (mysqli_query($db, $sql)) {
   	//echo "Apartment booked successfully ";
   	//header("Location: propertymanagement.php");

   	//Get no of units for that id
     $getUnits = "SELECT * FROM houses WHERE house_id = '$apartment_idpay'";
     $result = mysqli_query($db,$getUnits);
    
      while($row = mysqli_fetch_assoc($result)){

             
           $paid = $row['paid_apartments'];

            //Run an update

        }
        //Run an update
        $add = $paid++;
        $update = "UPDATE houses set paid_apartments ='$add' WHERE house_id = '$apartment_idpay' ";
        if(mysqli_query($db, $update)){
          //update booking status to paid
           $updateRem = "UPDATE booking set status ='paid' WHERE booking_id = '$booking_idpay' ";
           mysqli_query($db, $updateRem);
          if($amntowed > $amntrem){
            $overpay = $amntowed - $amntrem;
            header("Location:booking.php?username=$username&rem=$overpay&success=2");

          }else{
           header("Location:booking.php?username=$username&rem=0&success=3");
          }
        	//echo "Payment was successfull. Please wait for confirmation";
        }else{
        	echo "Database connection error.";

        }

   } else {
   	echo "Database connection error.";//.
   // echo $db->error;
   }
   
   mysqli_close($db);

}
}


