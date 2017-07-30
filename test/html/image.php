 <head>
 <link rel="stylesheet" type="text/css" href="style.css">
 </head>
 <body>
       <center>
<?php

/* ----
####Creado por curda ####
####    Dim Works    ####
#### www.dimworks.tk ####
#### Copy Right 2005 ####
---- */

include 'db.php';
include 'variables.php';

if(!isset($_GET['id'])){
        include 'style.php';
        echo "404 No se encontro propiedad.\n";
        exit;
}

$id = $_GET['id'];

//get the recordset with sql
$rs = mysql_query("SELECT * FROM images WHERE ImageId = '$id'");
//print out all the names in table users
while ($row=mysql_fetch_assoc($rs))
{
                $img = $row['ImageData'];
                $big = $row['ImageName'];
                $img2 = $row['ImageImg2'];
                $img3 = $row['ImageImg3'];
                $img4 = $row['ImageImg4'];
                $img5 = $row['ImageImg5'];
                $img6 = $row['ImageImg6'];
                $tipo = $row['ImageTipo'];
                $m2t = $row['ImageM2t'];
                $m2c = $row['ImageM2c'];
                $col = $row['ImageColonia'];
                $calle = $row['ImageDir'];
                $precio = $row['ImagePrecio'];
                $numero = $row['ImageNumero'];
                $descripcion = $row['ImageDescription'];
                $type = $row['ImageType'];

echo" <center>"
  . ""
  . "        <table border=\"0\" width=\"497\" height=\"1\" id=\"AutoNumber2\" style=\"border-collapse: collapse\" bordercolor=\"#111111\" cellpadding=\"0\" cellspacing=\"0\" background=\"images/fon_top.gif\">"
  . "          <tr>"
  . "            <td width=\"225\" height=\"1\">"
  . "            <b>"
  . "            <font face=\"Tahoma\">&nbsp;</font></b></td>"
  . "            <td width=\"272\" height=\"1\">"
  . "            <img border=\"0\" src=\"img/raiz.JPG\" width=\"63\" height=\"39\" align=\"bottom\"></td>"
  . "          </tr>"
  . "         </table>"
  . " <table border='0' cellpadding='0' cellspacing='0' style='border-collapse: collapse' bordercolor='#111111' height='5' id='AutoNumber1' width=\"497\">    "
  . " <tr>"
  . "<td height='1' colspan='9' width=\"491\" bgcolor=\"#FFFFFF\" background=\"images/fon_top.jpg\">&nbsp;</tr>"
  . "    "
  . "    <tr>"
  . "<td height='5' colspan='8' width=\"217\" rowspan=\"6\" bgcolor=\"#F0F0F0\"><p align='center'>"
  . "   <form name=\"frmimg\">"
  . "          <table  class=\"campos\" height=\"98\" width=\"230\"><tr>"
  . "            <td height=\"94\" bgcolor=\"#808080\" width=\"269\">"
  . "                <input type=\"hidden\" name=\"valx\" value=1 size=\"20\">"
  . "   <img height=\"149\" name=\"imagen21\" src=\"admin/$big\" width=\"224\">"
  . "        </a>"
  . "               </td>"
  . "            <td height=\"94\" bgcolor=\"#808080\" width=\"6\" background=\"images/bg_right.gif\">"
  . "                &nbsp;</td></tr>"
  . "          </table>"
  . "        </form>"
  . "    </tr>"
  . "    "
  . "    <td height='6' width=\"274\" bordercolor=\"#FFFFFF\" bgcolor=\"#F0F0F0\">"
  . "    <span style=\"font-size: 5\">&nbsp;</span></tr>"
  . "    "
  . "    <tr>"
  . "    "
  . "    <td height='29' width=\"274\" bordercolor=\"#FFFFFF\" bgcolor=\"#F0F0F0\">"
  . "    <p align=\"right\"><font face=\"Impact\" size=\"5\">$tipo</font></tr>"
  . "    "
  . "    </tr>"
  . "    "
  . "    <tr>"
  . "    <td height='30' width=\"274\" bordercolor=\"#FFFFFF\" bgcolor=\"#F0F0F0\"><b><font face=\"Verdana\">"
  . "    $col</font></b></tr>"
  . "    "
  . "    </tr>"
  . "   <tr>"
  . "    <td height='30' width=\"274\" bordercolor=\"#FFFFFF\" bgcolor=\"#F0F0F0\"><b><font face=\"Verdana\">"
  . "    $calle - $numero</font></b></tr>"
  . "    "
  . "    </tr>"
  . "   <tr>"
  . "    <td height='30' width=\"274\" bordercolor=\"#FFFFFF\" bgcolor=\"#F0F0F0\"><b><font face=\"Verdana\">"
  . "    Construcción: $m2c&nbsp m2; <br>Terreno: $m2t m2</font></b></tr>"
  . "    "
  . "    </tr>"
  . "   <tr>"
  . "    <td height='2' width=\"274\" bordercolor=\"#FFFFFF\" bgcolor=\"#F0F0F0\">"
  . "    <p align=\"center\"><b><font color=\"#CC0000\" face=\"Verdana\" size=\"5\">$precio</font></b></tr>"
  . "    "
  . "    </tr>"
  . "    "
  . "    <tr>"
  . "     <form name=\"frm31\">"
  . "     <input type=\"hidden\" name=\"imgsig\" value=\"1\">"
  . "    <td height='8' align='center' width=\"46\" bgcolor=\"#C0C0C0\"><a href=\"#\" style=\"text-decoration: none\" onclick=\"val_ant();\">"
  . "    <img border=\"0\" src=\"images/e_pass2.gif\" width=\"12\" height=\"12\"></a></td>"
  . "    <td height='8' align='center' width=\"23\" bgcolor=\"#C0C0C0\" background=\"images/fon01.gif\">"
  . "    <font face=\"Verdana\" size=\"1\"><a href=\"#\" onclick=\"cambiaimagen(1);\">1</a></font></td>"
  . "    <td height='8' align='center' width=\"23\" bgcolor=\"#C0C0C0\" background=\"images/fon01.gif\">"
  . "    <font face=\"Verdana\" size=\"1\"><a href=\"#\" onclick=\"cambiaimagen(2);\">2</a></font></td>"
  . "    <td height='8' align='center' width=\"23\" bgcolor=\"#C0C0C0\" background=\"images/fon01.gif\">"
  . "    <font face=\"Verdana\" size=\"1\"><a href=\"#\" onclick=\"cambiaimagen(3);\">3</a></font></td>"
  . "    <td height='8' align='center' width=\"22\" bgcolor=\"#C0C0C0\" background=\"images/fon01.gif\">"
  . "    <font face=\"Verdana\" size=\"1\"><a href=\"#\" onclick=\"cambiaimagen(4);\">4</a></font></td>"
  . "    <td height='8' align='center' width=\"22\" bgcolor=\"#C0C0C0\" background=\"images/fon01.gif\">"
  . "    <font face=\"Verdana\" size=\"1\"><a href=\"#\" onclick=\"cambiaimagen(5);\">5</a></font></td>"
  . "    <td height='8' align='center' width=\"22\" bgcolor=\"#C0C0C0\" background=\"images/fon01.gif\">"
  . "    <font face=\"Verdana\" size=\"1\"><a href=\"#\" onclick=\"cambiaimagen(6);\">6</a></font></td>"
  . "    <td height='8' align='center' width=\"29\" bgcolor=\"#C0C0C0\" background=\"images/fon01.gif\"><a href=\"#\" style=\"text-decoration: none\" onclick=\"val_sig()\">"
  . "    <img border=\"0\" src=\"images/e_pass.gif\" width=\"12\" height=\"12\"></a></td>"
  . "    <td height='8' align='center' width=\"274\" bgcolor=\"#C0C0C0\" bordercolor=\"#000000\" background=\"images/fon01.gif\">&nbsp;</td>"
  . "     </form>"
  . "   </tr>"
  . "   <tr>"
  . "    <td height='22' align='center' width=\"484\" colspan=\"9\" background=\"images/fon_top.jpg\">"
  . "    <font face=\"Arial Black\"><b>Descripción </b></font></td>"
  . "    </tr>"
  . "   <tr>"
  . "    <td height='139' width=\"484\" colspan=\"9\" background=\"images/65.jpg\">$descripcion</td>"
  . "    </tr>"
  . "   <tr>"
  . "    <td height='1'align=\"left\" width=\"484\" colspan=\"9\">"
  . "    <h2 align=\"center\">"
  . "    <font face=\"Verdana\" size=\"1\">Ignacio López Rayón #2 &quot;A&quot; Colonia los Cedros "
  . "    casi Esq. Av. Universidad Ote. C.P. 76165 Santiago de Querétaro, Qro. Tel: 182 \""
  . "    71 72, 182 71 73&nbsp; Tel &amp; Fax: 2 24 32 42&nbsp; |\""
  . "    <a style=\"PADDING-RIGHT: 0px\" href=\"mailto:info@renteriacorporativo.com\" alt=\"_\">"
  . "    info@renteriacorporativo.com</a></font></h2>"
  . "     <hr>"
  . "     </td>"
  . "    </tr>"
  . "   <tr>"
  . "    <td height='14' align='center' width=\"484\" colspan=\"9\">$cpright</td>"
  . "    </tr>"
  . "        </table>"
 ."";

}
?>
  <script>
                        function cambiaimagen(intv)
                        {
                                if (intv==1)
                                {
                                        document.frmimg.imagen21.src="<?php echo "admin/$big";?>"
                                        document.frmimg.valx.value=1
                                }
                                if (intv==2)
                                {
                                        document.frmimg.imagen21.src="<?php echo "admin/$img2";?>"
                                        document.frmimg.valx.value=2
                                }
                                if (intv==3)
                                {
                                        document.frmimg.imagen21.src="<?php echo "admin/$img3";?>"
                                        document.frmimg.valx.value=3
                                }
                                 if (intv==4)
                                {
                                        document.frmimg.imagen21.src="<?php echo "admin/$img4";?>"
                                        document.frmimg.valx.value=4
                                }
                                 if (intv==5)
                                {
                                        document.frmimg.imagen21.src="<?php echo "admin/$img5";?>"
                                        document.frmimg.valx.value=5
                                }
                                 if (intv==6)
                                {
                                        document.frmimg.imagen21.src="<?php echo "admin/$img6";?>"
                                        document.frmimg.valx.value=6
                                }
                        }
                        function val_ant()
                        {
                                if (document.frmimg.valx.value>1)
                                {
                                        cambiaimagen(document.frmimg.valx.value-1)
                                }else{
                                        cambiaimagen(6)
                                }
                        }

                        function val_sig()
                        {
                                if (6>document.frmimg.valx.value)
                                {
                                        document.frmimg.valx.value++;
                                        cambiaimagen(document.frmimg.valx.value++)
                                }else{
                                        cambiaimagen(1)
                                }
                        }
                </script>