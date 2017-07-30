<center>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="372" height="29" id="AutoNumber1">
    <tr>
<?php

if(!isset($_GET['id'])){
        include 'style.php';
        echo "404 No se encontro propiedad.\n";
        exit;
}

    global $CONFIG, $header_printed, $lang_errors, $CPG_M_DIR;

require 'config.php';
include 'style.php';
include 'db.php';
include 'variables.php';

    $green = "OK - Se borro<br>";
    $red = "NO, no se borro (ocurrio un error)<br>";
    $id = $_GET['id'];
    $dir = "$dirurl";
$query = mysql_query("SELECT * FROM images WHERE ImageId LIKE '%$id%' LIMIT 1");
while($row = mysql_fetch_array($query)) {
    $file = $row['ImageName'];
    $file2 = $row['ImageImg2'];
    $file3 = $row['ImageImg3'];
    $file4 = $row['ImageImg4'];
    $file5 = $row['ImageImg5'];
    $file6 = $row['ImageImg6'];
    $no = "no.jpg";

if($row['ImageName'] == "temp2.jpg"){
        $file = $no;
        }
if($row['ImageImg2'] == "temp.jpg"){
        $file2 = $no;
        }
if($row['ImageImg3'] == "temp.jpg"){
        $file3 = $no;
        }
if($row['ImageImg4'] == "temp.jpg"){
        $file4 = $no;
        }
if($row['ImageImg5'] == "temp.jpg"){
        $file5 = $no;
        }
if($row['ImageImg6'] == "temp.jpg"){
        $file6 = $no;
        }

    echo "<td class=\"tableb\" align=\"left\">Imagenes e información borrando</td>";


    if (!is_writable($dir));

    $files = array($file, $file2, $file3, $file4, $file5, $file6);

    foreach ($files as $currFile) {

        echo "<td class=\"tableb\" align=\"center\">";
        if (is_file($currFile)) {
            if (@unlink($currFile))
                echo $green;
            else
                echo $red;
        } else
            echo "&nbsp;";
        echo "</td>";
    }
    }

    $query = "DELETE FROM images WHERE ImageId LIKE '%$id%' LIMIT 1";
    $result = mysql_query($query);
    echo "<td class=\"tableb\" align=\"right\">";
    if (mysql_affected_rows() > 0)
        echo $green;
    else
        echo $red;
    echo "</td>";

    echo "</tr></table>\n";
    echo "<a href='editpart.php'>Regresar</a> | <a href='index.php'>Ir a la administración</a>";
    echo "$cpright";

    return $id;

?>