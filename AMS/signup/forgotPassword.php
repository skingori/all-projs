<?php
include('../config/dbConfig.php');
//require_once "../mail/Mail.php";
if($_SERVER["REQUEST_METHOD"] == "POST") {
	$email =$_POST['email'];
	//Check availability of the address from database
	
	$sql = "SELECT id FROM ams_users WHERE email = '$email'";
	$result = mysqli_query($db,$sql);
	$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
	
	$count = mysqli_num_rows($result);
	
	// If result matched $myusername and $mypassword, table row must be 1 row
	
	if($count == 1) {
		//session_register("username");
		//$_SESSION['username'] = $username;
	
		//header("location: welcome.php");
	
		echo "Password reset instructions sent to. ". $email;
		$mail = new PHPMailer(true);
		
		//Send mail using gmail
		if($send_using_gmail){
			$mail->IsSMTP(); // telling the class to use SMTP
			$mail->SMTPAuth = true; // enable SMTP authentication
			$mail->SMTPSecure = "ssl"; // sets the prefix to the servier
			$mail->Host = "smtp.gmail.com"; // sets GMAIL as the SMTP server
			$mail->Port = 465; // set the SMTP port for the GMAIL server
			$mail->Username = "timwamalwa@gmail.com"; // GMAIL username
			$mail->Password = "generalist"; // GMAIL password
		}
		
		//Typical mail data
		$mail->AddAddress($email, "AMS");
		$mail->SetFrom("AMS@gmail.com", "Tim");
		$mail->Subject = "My Subject";
		$mail->Body = "Mail contents";
		
		try{
			$mail->Send();
			//echo "Success!";
		} catch(Exception $e){
			//Something went bad
			echo "Fail :(";
		}
		
		
	}else {
		echo "This email address ". $email . " was not found. Please sign up ";
	}
	
}