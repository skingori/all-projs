<?php
// Inialize session
session_start();
// Check, if user is already login, then jump to secured page
if (isset($_SESSION['username']) && isset($_SESSION['category'])) {
    switch($_SESSION['category']) {
        case 1:
            header('location:farmer/index.php');//redirect to client page
            break;
        case 2:
            header('location:collector/index.php');//redirect to  page
            break;
        case 3:
            header('location:accounts/index.php');//redirect to  page
            break;
        case 4:
            header('location:admin/index.php');//redirect to admin
            break;

    }
}
else
{

header('Location:login.php');
}

?>