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

$query_sql = "SELECT tipo FROM Type";
$sql = mysql_query($query_sql) or die(mysql_error());
$row_sql = mysql_fetch_assoc($sql);
$totalRows_sql = mysql_num_rows($sql);

?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Bienes</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body leftmargin="0" topmargin="0">
<table width="72%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="77%"></td>
  </tr>
  <tr>
    <td valign="top"><div align="center">
        <form name="form1" method="post" action="">
          <table width="85%" border="0" cellspacing="0" cellpadding="0">
            <tr valign="top">
              <td height="28" colspan="2">
                <div align="center"><strong>
                  <font face="Verdana, Arial, Helvetica, sans-serif" size="2">
                  Seleccione para editar o borrar:</font></strong></div></td>
            </tr>
            <tr>
              <td width="41%"><div align="right">
                <font face="Verdana, Arial, Helvetica, sans-serif" size="2">
                Tipo:</font></div></td>
              <td width="59%">  <div align="left">
                <select size="1" name="search">
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
?></select>

          </div>
           </td>
            </tr>
            <tr>
              <td align="left"></td> <div align="left">
              <td align="left">
              <input type="submit" name="Submit" value="Enlistar" style="float: left"></div> </td>
            </tr>
          </table>
        </form>
                <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
        <?

                        include("db.php");

                        $userquery = $_POST['search'];

                        if ($userquery == "") {
                                echo "";
                        } else {
                                $link = mysql_connect($dbhost,$dbuser,$dbpass);
                                if (! $link)
                                        die("Could Not Connect To MySQL");
                                mysql_select_db($db) or die("Could Not Select Database, Is CurdaGallery Installed?");
                                $query = mysql_query("SELECT * FROM images WHERE ImageTipo LIKE '%$userquery%'");
                                echo "Todo el listado de: <i> $userquery</i><BR>";
                                while($row = mysql_fetch_array($query)) {
                                $foundtitle = $row["ImageTipo"];
                ?>
                <BR>
        </font>
        <table width="85%" border="0" cellspacing="0" cellpadding="0" height="1">
          <tr>
            <td width="50%" rowspan="6" valign="top" height="1"> <div align="center"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                <? echo "<a href=\"image.php?id=" . $row["ImageId"] . "\" ><img src=\"" . $row["ImageName"] . "\" width=\"116\" height=\"77\">"; ?></font></div>
              </td>
            <td width="50%" valign="top" height="4"><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><? echo "" . $row["Title"] . ""; ?></font></td>
          </tr>
          <tr>
            <td valign="top" align="left" height="20">
            <font size="2" face="Verdana, Arial, Helvetica, sans-serif" color="#666666">
            Colonia: <i><b><? echo "" . $row["ImageColonia"] . ""; ?></b></i> </font></td>
          </tr>
          <tr>
            <td valign="top" align="left" height="20">
            <font size="2" face="Verdana, Arial, Helvetica, sans-serif" color="#666666">
             Calle:  <i><? echo "" . $row["ImageDir"] . ""; ?></i> </font></td>
          </tr>
          <tr>
            <td valign="top" align="left" height="1">
            <font size="2" face="Verdana, Arial, Helvetica, sans-serif" color="#666666">
             Numero:  <i><? echo "" . $row["ImageNumero"] . ""; ?> </i></font></td>
          </tr>
          <hr>
        <? echo "<a href=\"edit.php?id=" . $row["ImageId"] . "\" >Editar</a>"; ?> | <? echo "<a href=\"delete.php?id=" . $row["ImageId"] . "\" >Borrar</a>"; ?>
          <hr>
        </table>
                <?
                        }
                        if ($foundtitle == "") {
                                echo "En este tipo no tiene ningun dato.";
                                mysql_close($link);
                        } else {
                                echo "";
                                mysql_close($link);
                        }
                }
                ?>
        <p><BR>
        </p>
      </div></td>
  </tr>
  </table>
   <font face="Verdana, Arial, Helvetica, sans-serif" size="2">
            <a href="index.php">Atras</a></font>
</body>
</html>
<?php
echo "$cpright";
?>