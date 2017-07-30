<?php

include 'style.php';
include 'db.php';


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

<script language="JavaScript">
<!--
function submitForm()

{
document.form1.submit();
}
//-->
</script>

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
                  Búsqueda de inmueble</font></strong></div></td>
            </tr>
            <tr>
              <td width="41%"><div align="right">
                <font face="Verdana, Arial, Helvetica, sans-serif" size="2">
                Seleccione:</font></div></td>
              <td width="59%">  <div align="left">
                <select size="1" name="search" OnChange="submitForm()">
                <option selected>Inmueble</option>
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
            </tr>    </form>
                        </table>
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
                                $query = mysql_query("SELECT * FROM images WHERE ImageTipo LIKE '%$userquery%' GROUP BY ImageColonia ");
                                 echo "<form name='form2' method='post' action='showsearch.php'>";
                                 echo "<input type='hidden' name='search1' value='$userquery' >";
                 ?>
                <!-- colonia -->
                <table width="98%" border="0" cellspacing="0" cellpadding="0">
           <tr>
              <td align="right"> <font size="2" face="Verdana, Arial, Helvetica, sans-serif"> Colonia: </td> <div align="left">
              <td align="left">
                <select size="1" name="search2" >
<?php

     do {
?>
    <option value="<?php echo $row['ImageColonia'];?>">
    <?php
     $COLL2 = $row['ImageColonia'];
     $COLL = $row['ImageColonia'];
     $COL = array("$COLL");
     $COL2 = array("$COLL2");
     $ALL = array_merge($COL, $COL2);
     $val = array_unique($ALL);
     foreach($val as $val2);
     echo $val2; ?></option>

    <?php
}
while ($row = mysql_fetch_array($query, MYSQL_BOTH));
 $row['ImageColonia'] = array_unique($row);
 $row['ImageColonia'] = array_unique($row['ImageColonia']);
 $foundtitle = $row["ImageTipo"];
 $row = mysql_num_rows($query);
  if($rows > 0) {
        mysql_data_seek($query, 0);
       $row_sql = mysql_fetch_array($query, MYSQL_BOTH);
       $row_sql = array_unique($row_sql);
   }
?>
<option value="- ">Todos</option>
   </select>
       </div> </td>
     </tr>  <tr>
              <td align="right"> <font size="2" face="Verdana, Arial, Helvetica, sans-serif"></td> <div align="left">
              <td align="left">
   <input type="submit" name="Submit" value="Buscar" style="float: left">
            </div> </td>
     </tr>
          </table>
   </form>
   <!-- fin colonia -->
                <?

                        if ($foundtitle == "") {
                                echo "";
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
   <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> <center>
       <b>     <a href="index.php"><b>Atrás</a></font> </b></b>
</body>
</html>