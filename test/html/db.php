<?php
/* ----
####Creado por curda ####
####    Dim Works    ####
#### www.dimworks.tk ####
#### Copy Right 2005 ####
---- */


$db = "renteria";                  // Database Name
$oklink = "admin.php";             // The Administration Page (DON'T TOUCH)
$errorlink = "login.php";          // Wrong Login Page           (DON'T TOUCH)

$dbhost = 'localhost';              // Database Host
$dbname = 'samnew';               // Database Name
$dbuser = 'root';                  // Database Username
$dbpass = 'root';                // Database Password

                 $usr = "root";             // Database Username
                 $pwd = "root";           // Database Password
                 $db = "samnew";           // Database Name
                 $host = "localhost";         // Database Host

include 'variables.php';

if(!$dbc = mysql_connect($dbhost,$dbuser,$dbpass)){
        echo "No se pudo conectar con la base de datos...";
        echo "$cpright";
        exit;
}
if(!mysql_select_db($dbname)){
        echo "No se pudo seleccionar la base de datos...";
        echo "$cpright";
        exit;
}

?>