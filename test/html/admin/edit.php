<?php

/* ----
####Creado por curda ####
####    Dim Works    ####
#### www.dimworks.tk ####
#### Copy Right 2005 ####
---- */

include 'db.php';
require 'config.php';
include 'style.php';
include 'variables.php';

if(!isset($_GET['id'])){
        include 'style.php';
        echo "404 No se encontro propiedad.\n";
        exit;
}

    $id = $_GET['id'];

$query_sql = "SELECT tipo FROM Type";
$sql = mysql_query($query_sql) or die(mysql_error());
$row_sql = mysql_fetch_assoc($sql);
$totalRows_sql = mysql_num_rows($sql);

$qry_sql = "SELECT col FROM Col";
$sql2 = mysql_query($qry_sql) or die(mysql_error());
$rows_sql = mysql_fetch_assoc($sql2);
$totalRows_sql2 = mysql_num_rows($sql2);

?>
<head>
<script language="JavaScript">
<!--
function setAbility(){
         if (document.theForm.radButt5[0].checked) {
                 document.theForm.userfile.disabled = false;
                 document.theForm.imgname.disabled = true;
                 document.theForm.img6.disabled = false;
                 document.theForm.img5.disabled = false;
                 document.theForm.img2.disabled = false;
                 document.theForm.img4.disabled = false;
                 document.theForm.img3.disabled = false;
         }
         if (document.theForm.radButt5[1].checked) {
                 document.theForm.userfile.disabled = true;
                 document.theForm.imgname.disabled = false;
                 document.theForm.img6.disabled = true;
                 document.theForm.img5.disabled = true;
                 document.theForm.img2.disabled = true;
                 document.theForm.img4.disabled = true;
                 document.theForm.img3.disabled = true;
         }
}
//-->
</script>
<script language="JavaScript" type="text/javascript" src="richtext.js"></script>
</head>
<?php
$query = mysql_query("SELECT * FROM images WHERE ImageId LIKE '%$id%' LIMIT 1");
while($row = mysql_fetch_array($query)) {
?>
<form name="theForm" enctype="multipart/form-data" action="update.php" method="POST" onsubmit="return submitForm();">
<script language="JavaScript" type="text/javascript">
<!--
function submitForm() {
//make sure hidden and iframe values are in sync before submitting form
updateRTE('description'); //use this when syncing only 1 rich text editor ("rtel" is name of editor)
//updateRTEs(); //uncomment and call this line instead if there are multiple rich text editors inside the form
alert("Submitted value: "+document.myform.rte1.value) //alert submitted value
return true; //Set to false to disable form submission, for easy debugging.
}

//Usage: initRTE(imagesPath, includesPath, cssFile)
initRTE("images/", "", "");
//-->
</script>
<noscript><p><b>Actualize su computadora, no soporta java scripts.</b></p></noscript>



        <font face="Arial Black" size="4">Editar una propiedad</font>/<a href="editpart.php"> Borrar una propiedad</a> |  <? echo "<a href=\"image.php?id=" . $row["ImageId"] . "\" >Ver Propiedad</a>";?><fieldset style="padding: 2">
        <legend><font face="Verdana" size="2" color="#003399">Tipo de Propiedad</font></legend>
        <font face="Verdana"><font size="2">&nbsp;- </font>
         <select size="1" name="tipo">
    <?php
     do {
?>

    <option value="<?php echo $row_sql['tipo'];?>"><?php echo $row_sql['tipo']?></option>
    <?php
} while ($row_sql = mysql_fetch_assoc($sql));
  $rows = mysql_num_rows($sql);
  if($rows > 0) {
      mysql_data_seek($sql, 0);
       $row_sql = mysql_fetch_assoc($sql);
  }
?>
  <option selected value="<?php echo $row['ImageTipo'];?>"><?php echo $row['ImageTipo']?></option>
  </select> <a href="loadTable.php?tbl=TypeTbl">Modificar/Agregar Tipos</a>
</font></fieldset><fieldset style="padding: 2">
        <legend><font face="Verdana" size="2" color="#003399">Dirección</font></legend>
        <font face="Verdana"><font size="2">- </font>
        <select size="1" name="col">
         <?php
     do {
?>
    <option value="<?php echo $rows_sql['col'];?>"><?php echo $rows_sql['col']?></option>
    <?php
} while ($rows_sql = mysql_fetch_assoc($sql2));
  $rows = mysql_num_rows($sql2);
  if($rows > 0) {
      mysql_data_seek($sql2, 0);
       $rows_sql = mysql_fetch_assoc($sql2);
  }
?>
 <option selected value="<?php echo $row['ImageColonia'];?>"><?php echo $row['ImageColonia']?></option>
</select>&nbsp; <font size="2"> </font>
        <input type="text" name="dir" size="20" value="<?php echo $row['ImageDir'];?>"><font size="2"> #</font><input type="text" name="numero" size="6" value="<?php echo $row['ImageNumero'];?>"> <a href="loadTable.php?tbl=ColTbl">Modificar/Agregar Colonias</a></font></fieldset><font size="2" face="Verdana"><br>
        </font><fieldset style="padding: 2">
        <legend><font face="Verdana" size="2" color="#003399">Descripción</font></legend>
        <font face="Verdana"><font size="2">&nbsp;</font>
<script language="JavaScript" type="text/javascript">
<!--
//Usage: writeRichText(fieldname, html, width, height, buttons, readOnly)
writeRichText('description', '<?php echo $row["ImageDescription"]?>', 520, 200, true, false);
</script>
       </font></fieldset><fieldset style="padding: 2">
        <legend><font face="Verdana" size="2" color="#003399">Imágenes</font></legend>
        <font face="Verdana"><font size="2">Fachada / frente: </font>
        <input name="userfile" type="file" size="20" /><font size="2">
        <input type="radio" name="radButt5" onClick="setAbility()" checked>Activar
        <input type="radio" name="radButt5" onClick="setAbility()">Desactivar
        <input type="hidden" name="imgname" value="temp2.jpg" disabled>

        <br>Sub img 1 </font>
        <input name="img2" type="file" size="20" value="temp.jpg"/><font size="2">

        <br>Sub img 2 </font>
        <input name="img3" type="file" size="20" ><font size="2">

        <br>Sub img 3 </font>
        <input name="img4" type="file" size="20" ><font size="2">

        <br>Sub img 4 </font>
        <input name="img5" type="file" size="20" value="temp.jpg"/><font size="2">

        <br>Sub img 5 </font>
        <input name="img6" type="file" size="20" value="temp.jpg"/><font size="2">

        </font>
        </font> </fieldset>
        <fieldset style="padding: 2">
        <legend><font face="Verdana" size="2" color="#003399">Extras:</font></legend>
        Precio:<input type="text" name="precio" value="<?php echo $row['ImagePrecio']?>" align="left"><br>
        Metros Construcción:<input type="text" name="M2c" value="<?php echo $row['ImageM2c']?>" align="center"><br>
        Metros Terreno:<input type="text" name="M2t" value="<?php echo $row['ImageM2t']?>" align="center">
        </fieldset>
        </font></font><p align="center">
        <font face="Verdana"><font size="2">&nbsp;</font>
        <input type="hidden" name="id" value="<?php echo $row['ImageId']?>">
        <input type="submit" value="Actualizar propiedad" /><font size="2">
        </font></font></p>
         </form>



<?php
  }

  mysql_close($dbc);

?>

<?php
  echo "$content";
  echo "$cpright";

 ?>