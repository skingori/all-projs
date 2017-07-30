<HEAD>

<SCRIPT LANGUAGE="JavaScript">
<!-- Begin
function popUp(URL) {
day = new Date();
id = day.getTime();
eval("page" + id + " = window.open(URL, '" + id + "', 'toolbar=0,scrollbars=1,location=0,statusbar=0,menubar=0,resizable=0,width=550,height=400,left = 180,top = 100');");
}
// End -->
</script>

</head> <center> <font face="Verdana, Arial, Helvetica, sans-serif" size="2">
            <a href="index.php">Realizar nueva búsqueda</a></font>
<table width="567" border="1" cellspacing="1" height="40" bordercolor="#000000" bordercolorlight="#FFFFFF" bordercolordark="#FFFFFF">
          <tr>
            <td width="113" valign="top" height="26" align="left" bordercolor="#000000">
            <font face="Verdana, Arial, Helvetica, sans-serif" size="2">
            <center>Dirección</font></center></td>
            <td width="113" valign="top" height="26" align="left" bordercolor="#000000">
            <font face="Verdana, Arial, Helvetica, sans-serif" size="2">
            <center>Fotografía</center> </font></td>
            <td width="113" valign="top" height="26" align="left" bordercolor="#000000">
            <font face="Verdana, Arial, Helvetica, sans-serif" size="2"><center>Precio</center>
            </font></td>
            <td width="114" valign="top" height="26" align="left" bordercolor="#000000"><center>m2 Terreno</center></td>
            <td width="114" valign="top" height="26" align="left" bordercolor="#000000"><center>m2 Construcción</center></td>
          </tr>
<?

                        include("db.php");

                        $userquery = $_POST['search2'];
                        $userquery2 = $_POST['search1'];

                        if ($userquery == "") {
                                echo "";
                        } else {
                                $link = mysql_connect($dbhost,$dbuser,$dbpass);
                                if (! $link)
                                        die("Could Not Connect To MySQL");
                                mysql_select_db($db) or die("Could Not Select Database, Is DVDlib Installed?");

                                $query = mysql_query("SELECT * FROM images WHERE ImageColonia LIKE '%$userquery%' &&  ImageTipo LIKE '%$userquery2%' ");
                                echo "<center>Búsqueda de inmueble: <b>$userquery2</b></center>";

                                while($row = mysql_fetch_array($query)) {
                                $foundtitle = $row["ImageColonia"];
                ?>
               <tr>
            <td width="113" valign="top" height="24" align="center" bordercolor="#C0C0C0">
                <p align="left"><font size="2" face="Verdana" color="#666666">
                <? echo "" . $row["ImageColonia"] . ""; ?><br></p>
                <? echo "<a href=\"javascript:popUp('image.php?id=" . $row["ImageId"] . "')\" >"; ?>
                 </font><font size="1" face="Verdana" color="#666666">
                (Más Información)</a></font></font>
              </td>
            <td width="113" valign="top" align="center" height="24" bordercolor="#C0C0C0"> <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                <? echo "<a href=\"javascript:popUp('image.php?id=" . $row["ImageId"] . "')\" ><img src=\"cam.jpg\" width=\"70\" height=\"60\">"; ?>
                </a></font></td>
            <td width="113" valign="top" align="left" height="24" bordercolor="#C0C0C0">
            <font size="2" face="Verdana" color="#666666">
                <? echo "" . $row["ImagePrecio"] . ""; ?><br>
            </td>
            <td width="114" valign="top" height="24" align="center" bordercolor="#C0C0C0"><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><font size="2" face="Verdana" color="#666666">
                <? echo "" . $row["ImageM2t"] . "m2"; ?><br>
            </font></td>
            <td width="114" valign="top" height="24" align="center" bordercolor="#C0C0C0">
            <font size="2" face="Verdana" color="#666666">
                <? echo "" . $row["ImageM2c"] . "m2"; ?><br>
            </td>
          </tr>
                <?
                        }
                        if ($foundtitle == "") {
                                echo "Su busqueda no produjo ningun dato.";
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
            <a href="index.php">Realizar nueva búsqueda</a></font>
</body>
</html>