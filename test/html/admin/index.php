<?php
require 'config.php';
?>
<html>

<head>
<meta http-equiv="Content-Language" content="es">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Sistema de Administración por Dim Works</title>
</head>

<body>

<p align="center"><font size="5" face="ATROX">Sistema de Administración</font></p>
<hr>
<div align="left">
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="733" height="51" id="AutoNumber1" align="center
 ">
    <tr>
      <td width="255" height="1" bgcolor="#808080">
      <p align="center"><b><font face="Tahoma" size="2">
      <a href="loadTable.php?tbl=TypeTbl"><font color="#C0C0C0">Agregar Tipos</font></a></font></b></td>
      <td width="472" height="1"></td>
    </tr>
    <tr>
      <td width="727" height="3" colspan="2" bgcolor="#C0C0C0">
      <font face="Verdana" size="1">Para agregar un tipo de venta e inmueble
      haga clic en Agregar Tipos y de inmediato aparecerá una ventana con una
      tabla de base de datos de los tipos que tiene. <br>
      De clic en agregar, inserte la información necesaria y a continuación de
      clic en &quot;save changes&quot;</font></td>
      </tr>
    <tr>
      <td width="727" height="6" colspan="2">
      <font face="Verdana" style="font-size: 5">&nbsp;</font></td>
      </tr>
    <tr>
      <td width="255" height="10" bgcolor="#808080">
      <p align="center"><b><font face="Tahoma" size="2">
      <a href="loadTable.php?tbl=ColTbl"><font color="#C0C0C0">Agregar Colonia</font></a></font></b></td>
      <td width="472" height="10"></td>
      </tr>
    <tr>
      <td width="727" height="12" colspan="2" bgcolor="#C0C0C0">
      <font face="Verdana" size="1">Para agregar una Colonia haga clic en
      Agregar Colonia y de inmediato aparecerá una ventana con una tabla de base
      de datos de las Colonias que ya tiene. <br>
      De clic en agregar, inserte la información necesaria y a continuación de
      clic en &quot;save changes&quot;</font></td>
      </tr>
    <tr>
      <td width="727" height="7" colspan="2">
      <font face="Verdana" style="font-size: 5">&nbsp;</font></td>
      </tr>
    <tr>
      <td width="255" height="12" bgcolor="#808080">
      <p align="center"><b><font face="Tahoma" size="2"><a href="add.php">
      <font color="#C0C0C0">Agregar una propiedad</font></a></font></b></td>
      <td width="472" height="12"></td>
    </tr>
    <tr>
      <td width="733" height="31" colspan="2" bgcolor="#C0C0C0">
      <font face="Verdana" size="1">Para agregar
      una propiedad haga clic en Agregar una propiedad, de inmediato aparecerá
      una ventana que tendrá los campos de Tipo de propiedad, Dirección, Precio, Descripción e Imágenes. </font>
      <p><font face="Verdana" size="1">Cada campo esta dedicado para ser
      rellenado con la infamación suficiente a mostrar. </font></td>
    </tr>
    <tr>
      <td width="733" height="1" colspan="2">
      <font face="Verdana" style="font-size: 5">&nbsp;</font></td>
    </tr>
    <tr>
      <td width="255" height="12" bgcolor="#808080">
      <p align="center"><b><font face="Tahoma" size="2" color="#C0C0C0">
      <a href="editpart.php"><font color="#C0C0C0">Editar fotos y texto de una
      propiedad </font></a></font></b></td>
      <td width="472" height="12"></td>
    </tr>
    <tr>
      <td width="733" height="30" colspan="2" bgcolor="#C0C0C0">
      <font face="Verdana" size="1">Para editar una propiedad haga clic en
      editar fotos y texto de una propiedad, a continuación saldrá una ventana
      en el cual pide que enliste las propiedades haciendo clic en el tipo y
      después en enlistar. Al hacer esto se enlistaran todas las propiedades del
      tipo seleccionado y tendrán las opciones Editar y Borrar, las opciones por
      propiedad serán las que están derriba de ellas.</font><p>
      <b>
      <font face="Verdana" size="2">Importante:</font><font face="Verdana" size="1"> </font> </b>
      <font face="Verdana" size="1">Si solo va a editar texto
      de una propiedad utilice editar texto de una propiedad por que al no subir
      fotos en este editor se perderán las ya subidas. </font></td>
    </tr>
    <tr>
      <td width="733" height="14" colspan="2"></td>
    </tr>
    <tr>
      <td width="255" height="12" bgcolor="#808080">
      <p align="center"><b><font face="Tahoma" size="2">
      <a href="loadTable.php?tbl=ImagesTbl"><font color="#C0C0C0">Editar solo
      texto de una propiedad</font></a></font></b></td>
      <td width="472" height="12"></td>
    </tr>
    <tr>
      <td width="733" height="22" colspan="2" bgcolor="#C0C0C0">
      <font face="Verdana" size="1">Para editar
      una propiedad haga clic en Editar solo texto de una propiedad, de
      inmediato aparecerá una ventana que tendrá el listado de las propiedades,
      busque su propiedad haga los cambios necesarios y de clic en &quot;save
      changes&quot;.</font></td>
    </tr>
    <tr>
      <td width="733" height="5" colspan="2"></td>
    </tr>
    <tr>
      <td width="733" height="14" colspan="2"></td>
    </tr>
    <tr>
      <td width="255" height="12" bgcolor="#808080">
      <p align="center"><b><font face="Tahoma" size="2">
      <a href="editpart.php"><font color="#C0C0C0">Borrar una propiedad</font></a></font></b></td>
      <td width="472" height="12"></td>
    </tr>
    <tr>
      <td width="733" height="22" colspan="2" bgcolor="#C0C0C0">
      <font face="Verdana" size="1">Para borrar una propiedad haga clic en
      borrar una propiedad, a continuación saldrá una ventana en el cual pide
      que enliste las propiedades haciendo clic en el tipo y después en
      enlistar. Al hacer esto se enlistaran todas las propiedades del tipo
      seleccionado y tendrán las opciones Editar y Borrar, las opciones por
      propiedad serán las que están derriba de ellas.</font><p>
      <font color="#111111" size="2" face="Verdana"><b>Importante:</b></font><font face="Verdana" size="1">
      Si va a borrar una propiedad que tiene las mismas imágenes que otra
      propiedad borre la desde: </font><font face="Verdana" size="2">
      <a href="loadTable.php?tbl=ImagesTbl"><font color="#800000">Borrar
      propiedad y no las fotos</font></a></font><font color="#800000"><font face="Verdana" size="2">.</font><font face="Verdana" size="1">
      </font></font><font face="Verdana" size="1"><font color="#111111">Para
      prevenir errores o propiedades sin foto.</font></font></td>
    </tr>
    <tr>
      <td width="733" height="5" colspan="2"></td>
    </tr>
    <tr>
      <td width="733" height="14" colspan="2"></td>
    </tr>
    <tr>
      <td width="255" height="12" bgcolor="#808080">
      <p align="center"><b><font face="Tahoma" size="2">
      <a href="filemanager.php"><font color="#C0C0C0">File Manager</font></a></font></b></td>
      <td width="472" height="12"></td>
    </tr>
    <tr>
      <td width="733" height="22" colspan="2" bgcolor="#C0C0C0">
      <font face="Verdana" size="1">El File Manager es para usuarios avanzados, </font>
      <font color="#FF0000" size="2" face="Verdana">Advertencia</font><font face="Verdana" size="1">, podría borrar imágenes o
      archivos al usar esta utilidad, usar con cuidado. </font></td>
    </tr>
    <tr>
      <td width="733" height="5" colspan="2"></td>
    </tr>
    <tr>
      <td width="733" height="30" colspan="2">
      <p align="center"><b><font face="Verdana" size="1">Inventory</font><font face="Verdana" size="1">
      Curda Gallery v2.4 por: <a href="http://www.dimworks.tk">Dim Works</a></font></b></td>
    </tr>
  </table>
</div>

</body>

</html>