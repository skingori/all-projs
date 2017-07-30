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


$_IMAGE = array();
$_IMAGE['name'] = $_FILES['userfile']['name'];
$_IMAGE['size'] = $_FILES['userfile']['size'];
$_IMAGE['date'] = date("D d F Y");
$_IMAGE['type'] = substr($_FILES['userfile']['type'],6);
$_IMAGE['code'] = microtime();
$_IMAGE['dir'] = $dir;
$_IMAGE['description'] = $description;
$_IMAGE['numero'] = $numero;
$_IMAGE['colonia'] = $col;
$_IMAGE['tipo'] = $tipo;
$_IMAGE['precio'] = $precio;
$_IMAGE['m2c'] = $m2c;
$_IMAGE['m2t'] = $m2t;
$_IMAGE['img2'] = $_FILES['img2']['name'];
$_IMAGE['img3'] = $_FILES['img3']['name'];
$_IMAGE['img4'] = $_FILES['img4']['name'];
$_IMAGE['img5'] = $_FILES['img5']['name'];
$_IMAGE['img6'] = $_FILES['img6']['name'];

if($_IMAGE['name'] == ""){
        $_IMAGE['name'] = $imgname;
        }
if($_IMAGE['name'] == ""){
        echo "Información Insuficiente.\n";
        echo "<br />\n";
        echo "<a href=\"index.php\">Ir Atras</a>\n";
         echo "$cpright";
        exit;
        }
if($_IMAGE['img2'] == ""){
        $_IMAGE['img2'] = $img21;
        }
if($_IMAGE['img3'] == ""){
        $_IMAGE['img3'] = $img31;
        }
if($_IMAGE['img4'] == ""){
        $_IMAGE['img4'] = $img41;
        }
if($_IMAGE['img5'] == ""){
        $_IMAGE['img5'] = $img51;
        }
if($_IMAGE['img6'] == ""){
        $_IMAGE['img6'] = $img61;
        }


if($_IMAGE['size']>251200){
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

$sql = "INSERT INTO images (`ImageName`,`ImageSize`,`ImageType`,`ImageDate`,`ImageImg2`,`ImageImg3`,`ImageImg4`,`ImageImg5`,`ImageImg6`,`ImageDir`,`ImageTipo`,`ImageDescription`,`ImageNumero`,`ImageColonia`,`ImagePrecio`,`ImageM2c`,`ImageM2t`) VALUES ('{$_IMAGE['name']}','{$_IMAGE['size']}','{$_IMAGE['type']}','{$_IMAGE['date']}','{$_IMAGE['img2']}','{$_IMAGE['img3']}','{$_IMAGE['img4']}','{$_IMAGE['img5']}','{$_IMAGE['img6']}','{$_IMAGE['dir']}','{$_IMAGE['tipo']}','{$_IMAGE['description']}','{$_IMAGE['numero']}','{$_IMAGE['colonia']}','{$_IMAGE['precio']}','{$_IMAGE['m2c']}','{$_IMAGE['m2t']}')";

if(!mysql_query($sql)){
        echo "La propiedad no puede ser agregada.\n";
        echo "<br />\n";
        echo "Error: ".mysql_error().".\n";
        echo "<br />\n";
        echo "<a href=\"index.php\">Ir Atras</a>\n";
         echo "$cpright";
}else{

        echo "Se agrego la propiedad satisfactoriamente.\n";
        echo "<br />\n";
        echo "<br />\n";
        echo "<a href=\"index.php\">Ir Atras</a>\n";
         echo "$cpright";
}

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