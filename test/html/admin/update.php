<?php

/* ----
####Creado por curda ####
####    Dim Works    ####
#### www.dimworks.tk ####
#### Copy Right 2005 ####
---- */

require 'config.php';
include 'style.php';
include 'db.php';
include 'variables.php';

$id = @$HTTP_POST_VARS["id"];
$tipo = @$HTTP_POST_VARS["tipo"];
$dir = @$HTTP_POST_VARS["dir"];
$description = @$HTTP_POST_VARS["description"];
$numero = @$HTTP_POST_VARS["numero"];
$col = @$HTTP_POST_VARS["col"];
$img21 = "temp.jpg";
$img31 = "temp.jpg";
$img41 = "temp.jpg";
$img51 = "temp.jpg";
$img61 = "temp.jpg";
$imgname = @$HTTP_POST_VARS["imgname"];
$precio = @$HTTP_POST_VARS["precio"];
$m2c = @$HTTP_POST_VARS["M2c"];
$m2t = @$HTTP_POST_VARS["M2t"];
$green = "OK - Se Actualizo<br>";
$red = "NO se pudo actualizar(ocurrio un error)<br>Error: ".mysql_error().".\n";

$query = mysql_query("SELECT * FROM images WHERE ImageId LIKE '%$id%'");
while($row = mysql_fetch_array($query)) {

if(!isset($_FILES)){
        echo "Información Insuficiente.\n";
        echo "<br />\n";
        echo "<a href=\"index.php\">Ir Atras</a>\n";
         echo "$cpright";
        exit;
}


if($_FILES['userfile']['error']!=0){
        echo "Ocurrio un error.\n";
        echo "<br />\n";
        echo "<a href=\"index.php\">Ir Atras</a>\n";
         echo "$cpright";
        exit;
}

if($id == ""){
       echo "No hay información sufuciente";
       echo "<br />\n";
       echo "<a href=\"index.php\">Ir Atras</a>\n";
       echo "$cpright";
       exit;
}

$_IMAGE = array();
$_IMAGE_name = $_FILES['userfile']['name'];
$_IMAGE_size = $_FILES['userfile']['size'];
$_IMAGE_date = date("D d F Y");
$_IMAGE_type = substr($_FILES['userfile']['type'],6);
$_IMAGE_code = microtime();
$_IMAGE_dir = $dir;
$_IMAGE_description = $description;
$_IMAGE_numero = $numero;
$_IMAGE_colonia = $col;
$_IMAGE_tipo = $tipo;
$_IMAGE_precio = $precio;
$_IMAGE_m2c = $m2c;
$_IMAGE_m2t = $m2t;
$_IMAGE_img2 = $_FILES['img2']['name'];
$_IMAGE_img3 = $_FILES['img3']['name'];
$_IMAGE_img4 = $_FILES['img4']['name'];
$_IMAGE_img5 = $_FILES['img5']['name'];
$_IMAGE_img6 = $_FILES['img6']['name'];

if($_IMAGE_name == ""){
        $_IMAGE_name = $imgname;
        }
if($_IMAGE_name == ""){
        echo "Información Insuficiente.\n";
        echo "<br />\n";
        echo "<a href=\"index.php\">Ir Atras</a>\n";
         echo "$cpright";
        exit;
        }
if($_IMAGE_img2 == ""){
        $_IMAGE_img2 = $img21;
        }
if($_IMAGE_img3 == ""){
        $_IMAGE_img3 = $img31;
        }
if($_IMAGE_img4 == ""){
        $_IMAGE_img4 = $img41;
        }
if($_IMAGE_img5 == ""){
        $_IMAGE_img5 = $img51;
        }
if($_IMAGE_img6 == ""){
        $_IMAGE_img6 = $img61;
        }


if($_IMAGE_size>251200){
        echo "Imagen demasiado pesada.\n";
        echo "<br />\n";
        echo "Max File Size: 250kb (251'200b).\n";
        echo "<br />\n";
        echo "<a href=\"index.php\">Ir Atras</a>\n";
         echo "$cpright";
        exit;
}



$f = fopen($_FILES['userfile']['tmp_name'],'r');

@copy($_FILES["img6"]["tmp_name"],"./".$_FILES["img6"]["name"]);
@copy($_FILES["img5"]["tmp_name"],"./".$_FILES["img5"]["name"]);
@copy($_FILES["img4"]["tmp_name"],"./".$_FILES["img4"]["name"]);
@copy($_FILES["img3"]["tmp_name"],"./".$_FILES["img3"]["name"]);
@copy($_FILES["img2"]["tmp_name"],"./".$_FILES["img2"]["name"]);
@copy($_FILES["userfile"]["tmp_name"],"./".$_FILES["userfile"]["name"]);

}

    $query = "UPDATE images SET ImageName='$_IMAGE_name', ImageSize='$_IMAGE_size', ImageType='$_IMAGE_type', ImageDate='$_IMAGE_date', ImageImg2='$_IMAGE_img2', ImageImg3='$_IMAGE_img3', ImageImg4='$_IMAGE_img4', ImageImg5='$_IMAGE_img5', ImageImg6='$_IMAGE_img6', ImageDir='$_IMAGE_dir', ImageTipo='$_IMAGE_tipo', ImageDescription='$_IMAGE_description', ImageNumero='$_IMAGE_numero', ImageColonia='$_IMAGE_colonia', ImagePrecio='$_IMAGE_precio', ImageM2c='$_IMAGE_m2c', ImageM2t='$_IMAGE_m2t' WHERE ImageId='$id'";
    $result = mysql_query ($query);
    echo "<td class=\"tableb\" align=\"right\">";
    if (mysql_affected_rows() > 0)
        echo $green;
    else
        echo $red;

    echo "<br></td>";
    echo "</tr></table>\n";
    echo "<a href='edit.php?id=$id'>Regresar</a> | <a href='index.php'>Ir a la administración</a>";
    echo "$cpright";

//------------------------------------------------------------------------------


function checktype($type){
        switch($type)
                {
                case "png":
                        return(true);
                break;
                case "gif":
                        return(true);
                break;
                case "jpg":
                        return(true);
                break;
                case "jpeg":
                        return(true);
                break;
                case "pjpeg":
                        return(true);
                break;
                default:
                return(false);
                }
}
?>