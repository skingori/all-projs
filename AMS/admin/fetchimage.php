<?php
include('../config/dbConfig.php');
$id = $_GET['id'];
if (!$db) {
    die();
    echo "Sign up failed. Database connection error.";
   }
  
   $query="SELECT * FROM houses where house_id = '$id'";
        $result = mysqli_query($db,$query);
        
        while($row = mysqli_fetch_assoc($result)){

              header("Content-type: image/jpeg");
              echo $row['image'];
        }
        mysqli_close($db);