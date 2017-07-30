<?php

require 'config.php';
include 'db.php';
include 'variables.php';
/* ----
####Creado por curda ####
####    Dim Works    ####
#### www.dimworks.tk ####
#### Copy Right 2005 ####
---- */

        if ( isset($_GET["tbl"]) || isset($_POST["tbl"]) ){
                $loadTable = $_REQUEST["tbl"];
        }
        else{
                $loadTable = "";
        }

        if ( $loadTable != "" ){
                //--------------------------------------------------
                // D E F I N E   P A R A M E T E R S
                //--------------------------------------------------
                // M O D I F Y   T H I S   S E C T I O N   O N L Y
                //--------------------------------------------------


                switch($loadTable){
                        case 'ColTbl':
                                $heading = "Colonias";
                                $SQLTable = "Col";
                                $tableId = "ColTbl";
                                unset($SQLColumns); unset($TextColumns);
                                $SQLColumns[] = "id";                $TextColumns[] = "*"; // * = hidden
                                $SQLColumns[] = "col";                $TextColumns[] = "Colonia de la propiedad.";
                                break;
                        case 'TypeTbl':
                                $heading = "Tipo";
                                $SQLTable = "Type";
                                $tableId = "TypeTbl";
                                unset($SQLColumns); unset($TextColumns);
                                $SQLColumns[] = "id";                $TextColumns[] = "*"; // * = hidden
                                $SQLColumns[] = "tipo";                        $TextColumns[] = "Tipo de la propiedad.";
                                break;
                        case 'ImagesTbl':
                                $heading = "Lista de Propiedades";
                                $SQLTable = "images";
                                $tableId = "imagesTbl";
                                unset($SQLColumns); unset($TextColumns);
                                $SQLColumns[] = "ImageId";                 $TextColumns[] = "*";
                                $SQLColumns[] = "ImageDate";               $TextColumns[] = "Fecha";
                                $SQLColumns[] = "ImageDir";                $TextColumns[] = "Calle";
                                $SQLColumns[] = "ImageTipo";               $TextColumns[] = "Tipo";
                                $SQLColumns[] = "ImageDescription";        $TextColumns[] = "Descripcion";
                                $SQLColumns[] = "ImageNumero";             $TextColumns[] = "Numero";
                                $SQLColumns[] = "ImageColonia";            $TextColumns[] = "Colonia";
                                $SQLColumns[] = "ImageM2c";            $TextColumns[] = "m2c";
                                $SQLColumns[] = "ImageM2t";            $TextColumns[] = "m2t";
                                $SQLColumns[] = "ImagePrecio";            $TextColumns[] = "Precio";
                                break;
                        default:
                                unset($SQLColumns); unset($TextColumns);
                                $heading = "";
                }
                //--------------------------------------------------
                //           E N D   O F   S E C T I O N
                //--------------------------------------------------

                //Count visible columns
                $totColumns = 0;
                if (isset($TextColumns)){
                        for ($loop=0; $loop < count($TextColumns); $loop++){
                                if ($TextColumns[$loop] != "*"){
                                        $totColumns++;
                                }
                        }
                }
        }
        else{
                $SQLTable = "";
        }

        //----------------------------------------
        // C O U N T   R E C O R D S
        //----------------------------------------

        if ( $SQLTable != ""){
                //connect to mysql server
                if(!$cid = mysql_connect($host,$usr,$pwd)) { exit("ERROR: " . mysql_error() . "<BR>$host\\$usr<BR>loadTable[#1]"); }

                //open databse
                if (!mysql_select_db($db)) { exit("ERROR: " . mysql_error() . "<BR>$db<BR>loadTable[#2]"); }

                //define SQL statement
                $SQL = " SELECT count(*) AS total ";
                $SQL = $SQL . " FROM " . $SQLTable;

                //execute
                if(!$result = mysql_query("$SQL",$cid)) { exit("ERROR: " . mysql_error() . "<BR>$SQL<BR>loadTable[#3]"); }

                //Read result
                if($row = mysql_fetch_array($result)){
                        $totRecords = $row["total"];
                }
                else{
                        $totRecords = 0;
                }

                //close database
                mysql_free_result($result);
                mysql_close($cid);
        }
        else{
                $totRecords = 0;
        }
?>
<HTML>
<HEAD>
        <META http-equiv="content-type" content="text/html; charset=ISO-8859-1">
        <LINK href="../styles/Style01.css" title="compact" rel="stylesheet" type="text/css">
        <TITLE>SYSTEM TABLES</TITLE>
        <SCRIPT LANGUAGE="javascript">

<?php
        //-------------------------------------
        //G E N E R A T E   J A V A S C R I P T
        //-------------------------------------
        echo("        var colsVisible = new Array();\n");
        echo("        var colsHidden = new Array();\n");
        echo("        var recordStatus = new Array();\n");
        echo("\n");

        for($loop = 0; $loop < $totRecords; $loop++){
                echo("        recordStatus[$loop]=\"C\";\n");
        }

        $visibleCount = 0; $hiddenCount = 0;
        if (isset($TextColumns)){
                for($loop = 0; $loop < count($TextColumns); $loop++){
                        if ($TextColumns[$loop] != "*"){
                                echo("        colsVisible[$visibleCount] = '" . $SQLColumns[$loop] . "';\n");
                                $visibleCount++;
                        }
                }
        }

        if (isset($TextColumns)){
                for($loop = 0; $loop < count($TextColumns); $loop++){
                        if($TextColumns[$loop] == "*"){
                                echo("        colsHidden[$hiddenCount] = '" . $SQLColumns[$loop] . "';\n");
                                $hiddenCount++;
                        }
                }
        }

        echo("\n");
        echo("        function setModify(numRen){\n");
        echo("                recordStatus[numRen] = \"U\";\n");
        echo("        }");

        echo("\n");
        echo("        function addLine(){\n");
        echo("                var tableData = document.getElementById('tblDatos');\n");
        echo("                row = document.createElement('TR');\n");
        echo("                cell = document.createElement('TD');                \n");
        echo("                chkbox = document.createElement('INPUT');\n");
        echo("                chkbox.setAttribute ('type', 'checkbox');\n");
        echo("                chkbox.setAttribute ('name', 'chkRow[]');\n");
        echo("                cell.appendChild(chkbox);\n");
        echo("                cell.style.textAlign = 'center';\n");
        echo("                cell.style.border = '1px solid';\n");
        echo("                row.appendChild(cell);\n");
        echo("                for(var rowCount=0; rowCount < colsVisible.length; rowCount++){\n");
        echo("                        var nomRen = colsVisible[rowCount] + '[]';\n");
        echo("                        input = document.createElement('INPUT');\n");
        echo("                        input.setAttribute('name', nomRen);\n");
        echo("                        input.setAttribute('id', nomRen);\n");
        echo("                        input.style.width = '100%';\n");
        echo("                        cell = document.createElement('TD');\n");
        echo("                        cell.style.border = '1px solid';\n");
        echo("                        cell.appendChild(input);\n");
        echo("                        row.appendChild(cell);\n");
        echo("                }\n");
        echo("                for(var rowCount = 0; rowCount < colsHidden.length; rowCount++){\n");
        echo("                        var nomRen = colsHidden[rowCount] + '[]';\n");
        echo("                        input = document.createElement('INPUT');\n");
        echo("                        input.setAttribute('name', nomRen);\n");
        echo("                        input.setAttribute('id', nomRen);\n");
        echo("                        input.setAttribute('value', '*');\n");
        echo("                        cell = document.createElement('TD');\n");
        echo("                        cell.style.display = 'none';\n");
        echo("                        cell.appendChild(input);\n");
        echo("                        row.appendChild(cell);\n");
        echo("                }\n");
        echo("                tableData.appendChild(row);\n");
        echo("                recordStatus[recordStatus.length] = \"A\";\n");
        echo("        }");

        echo("        function prepareData(){\n");
        echo("                var formData = document.getElementById('frmDatos');\n");
        echo("                for(var rowCount =0; rowCount < recordStatus.length; rowCount++){\n");
        echo("                        input = document.createElement('INPUT');\n");
        echo("                        input.setAttribute('name', 'recordStatus[]');\n");
        echo("                        input.setAttribute('value', recordStatus[rowCount]);\n");
        echo("                        input.style.display = 'none';\n");
        echo("                        formData.appendChild(input);\n");
        echo("                }\n");
        echo("                for(var colCount =0; colCount < colsVisible.length; colCount++){\n");
        echo("                        input = document.createElement('INPUT');\n");
        echo("                        input.setAttribute('name', 'colSQLDatos[]');\n");
        echo("                        input.setAttribute('value', colsVisible[colCount]);\n");
        echo("                        input.style.display = 'none';\n");
        echo("                        formData.appendChild(input);\n");
        echo("                }\n");
        echo("                for(var colCount =0; colCount < colsHidden.length; colCount++){\n");
        echo("                        input = document.createElement('INPUT');\n");
        echo("                        input.setAttribute('name', 'colSQLLlaves[]');\n");
        echo("                        input.setAttribute('value', colsHidden[colCount]);\n");
        echo("                        input.style.display = 'none';\n");
        echo("                        formData.appendChild(input);\n");
        echo("                }\n");
        echo("                input = document.createElement('INPUT');\n");
        echo("                input.setAttribute('name', 'SQLTableName');\n");
        echo("                input.setAttribute('value', '$SQLTable');\n");
        echo("                input.style.display = 'none';\n");
        echo("                formData.appendChild(input);\n");
        echo("\n");
        echo("                input = document.createElement('INPUT');\n");
        echo("                input.setAttribute('name', 'TableId');\n");
        echo("                input.setAttribute('value', '$tableId');\n");
        echo("                input.style.display = 'none';\n");
        echo("                formData.appendChild(input);\n");
        echo("        }\n");
?>

        </SCRIPT>
</HEAD>
<BODY>
<FORM name="frmDatos" id="frmDatos" action="modifyTable.php" method="POST">
<center>
        <TABLE style="background-color: white; width: 790px; border: 1px solid;">
                <TR>
                        <TD style="width: 20%;">&nbsp;</TD>
                        <TD><CENTER>

<?php
        //--------------------------------
        // C O M M O N   F U N C T I O N S
        //--------------------------------
        function buildAddButton(){
                echo("<A href=\"javascript:;\"><img src=\"img/add.jpg\" style=\"border: 0px;\" onClick=\"addLine();\"></A>\n");
        }

        function buildSaveButton(){
                echo("<INPUT type=\"image\" value=\"btnGuardar\" name=\"btnSave\" src=\"img/save.jpg\" style=\"border: 0px;\" onClick=\"prepareData();\">\n");
        }

        if ($loadTable != ""){

                //---------------------------------
                //G E N E R A T E   H E A D E R
                //---------------------------------
                echo("<H3>" . $heading . "</H3><BR>");
                echo("<TABLE style=\"width: 100%; border: 0px; border-collapse: collapse;\">\n");
                echo("<THEAD>\n");
                if ( isset($TextColumns) ){
                        echo("<TR><TH style=\"border: 1px solid;\">Delete</TH>\n");                // Col. #1 - checkbox
                        for ($loop = 0; $loop < count($TextColumns); $loop++){
                                if ($TextColumns[$loop] != "*"){
                                        echo("<TH style=\"border: 1px solid; text-align: center;\">" . $TextColumns[$loop] . "</TH>\n");
                                }
                        }
                }
                echo("</THEAD>\n");

                if ($totRecords > 0){
                        //----------------------------------------
                        // R E A D   D A T A
                        //----------------------------------------
                        //connect
                        if(!$cid = mysql_connect($host,$usr,$pwd)) { exit("ERROR: " . mysql_error() . "<BR>$host\\$usr<BR>loadTable[#4]"); }

                        //open databse
                        if (!mysql_select_db($db)) { exit("ERROR: " . mysql_error() . "<BR>$db<BR>loadTable[#5]"); }

                        //build SQL command
                        $SQL = " SELECT ";
                        for($loop = 0; $loop < count($SQLColumns); $loop++){
                                if ($loop == 0){
                                        $SQL.= $SQLColumns[$loop];
                                }
                                else{
                                        $SQL.= " ," . $SQLColumns[$loop];
                                }
                        }
                        $SQL.= " FROM " . $SQLTable;

                        //run SQL
                        if(!$result = mysql_query("$SQL",$cid)) { echo("ERROR: " . mysql_error() . "<BR>$SQL<BR>loadTable[#6]"); }

                        //Show results
                        $loop = 0;
                        $nomCol = "";
                        echo("<TBODY id=\"tblDatos\">\n");
                        while ($row = mysql_fetch_array($result)) {
                                //Show data
                                echo("<TR>\n");
                                echo("<TD style=\"width: 1%; border: 1px solid; text-align: center;\"><INPUT type=checkbox name=\"chkBox[$loop]\"></TD>\n");

                                //Generate visible columns
                                for ($colCount=0; $colCount < count($TextColumns); $colCount++){
                                        if ($TextColumns[$colCount] != "*"){
                                                $nomCol = $SQLColumns[$colCount]; $nomCol.= "[]";
                                                echo("<TD style=\"border: 1px solid;\"><INPUT id=\"$nomCol\" name=\"$nomCol\" value='" . $row[$SQLColumns[$colCount]] . "' style=\"width: 100%;\" onChange=\"setModify('$loop');\"></TD>\n");
                                        }
                                }

                                //Generate Invisible columns - primary keys
                                for ($colCount=0; $colCount < count($TextColumns); $colCount++){
                                        if ($TextColumns[$colCount] == "*"){
                                                $nomCol = $SQLColumns[$colCount]; $nomCol.= "[]";
                                                echo("<TD style=\"DISPLAY: none;\"><INPUT id=\"$nomCol\" name=\"$nomCol\" value='" . $row[$SQLColumns[$colCount]] . "'></TD>\n");
                                        }
                                }
                                $loop++;
                        }
                        echo("</TBODY>\n");
                }
                else{
                        echo("<TBODY id=\"tblDatos\">\n");
                        echo("</TBODY>\n");
                }
                echo("</TABLE>\n");

                //------------------------------------------
                // G E N E R A T E   F O O T E R
                //------------------------------------------
                echo("<TABLE style=\"width: 100%; border: 0px; border-collapse: collapse;\">\n");
                //Show buttons aligned with columns
                echo("<TR><TD colspan=" . ($totColumns + 1) . " style=\"background-color: #FFFFFF;\">&nbsp;</TD></TR>\n");
                if ( isset($TextColumns) ){
                        echo("<TR><TD style=\"background-color: #FFFFFF;\">&nbsp;\n");
                        if ($totColumns <= 2){
                                if ($totColumns == 2){
                                        echo("</TD><TD style=\"background-color: #FFFFFF;\" >&nbsp;</TD>\n");
                                }
                        }
                        else{
                                echo("</TD><TD style=\"background-color: #FFFFFF;\" colspan=" . ($totColumns -1) . ">&nbsp;</TD>\n");
                        }
                        echo("<TD style=\"background-color: #FFFFFF; text-align: right;\">\n");
                        buildAddButton();
                        buildSaveButton();
                        echo("</TD></TR>\n");
                }
                echo("</TABLE>\n");
        }
        else{        //This is not a direct access page...
                echo('<H4><BR>No Table Selected</H4>');
        }
?>

                        </CENTER></TD>
                        <TD style="width: 20%;">&nbsp;</TD>
                </TR>
        </TABLE>
        <TABLE style="background-color: #cccccc; width: 600px; border: 0px; border-collapse: collapse;">
                <TR><TD style="text-align: right;"><B><A href="index.php">R E T U R N</A></B></TD></TR>
        </TABLE>
       <?php

echo "$cpright";
?>
</center>
</FORM>
</BODY>
</HTML>