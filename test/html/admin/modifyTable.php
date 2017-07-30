<?php

require 'config.php';

/* ----
####Creado por curda ####
####    Dim Works    ####
#### www.dimworks.tk ####
#### Copy Right 2005 ####
---- */

        //------------------
        // F U N C T I O N S
        //------------------


        // Name: Redirect
        //-----------------
        function Redirect ($url)
        {
           Header("HTTP/1.0 302 Redirect");
           Header("Location: $url");
           exit;
        }

        // Name: detectButtonPressed
        //--------------------------
        function detectButtonPressed(){
                if ( isset($_POST["btnSave_x"]) ){
                        if ($_POST["btnSave_x"] > 0 || $_POST["btnSave_y"] > 0){
                                return "btnSave";
                        }
                }
                return false;
        }

        //Name: addData
        //Description:        INSERT a row in the database table
        //-----------------------------------------------------
        function addData($paramData, $paramKeys, $paramSQLDatos, $paramSQLKeys, $paramTable, $paramDBConn){
                $strSQL = "INSERT INTO $paramDBName.$paramTable (";
                for ($cont=0; $cont < count($paramSQLDatos); $cont++){
                        if ($cont == 0){
                                $strSQL.= "$paramSQLDatos[$cont]";
                        }
                        else{
                                $strSQL.=", $paramSQLDatos[$cont]";
                        }
                }
                $strSQL.=") values(";

                for ($cont=0; $cont < count($paramData); $cont++){
                        if ($cont == 0){
                                $strSQL.= "'$paramData[$cont]'";
                        }
                        else{
                                $strSQL.=", '$paramData[$cont]'";
                        }
                }
                $strSQL.=")";

                $result = mysql_query("$strSQL",$paramDBConn);

                //check errors
                if (!$result) {
                        exit("ERROR: " . mysql_error() . "<BR>SQL = $strSQL<BR>modifyTable[#1]");
                }
                return true;
        }

        //Name: updateData
        //Description:        MODIFY a row in the database table
        //--------------------------------------------------
        function updateData($paramData, $paramKeys, $paramSQLDatos, $paramSQLKeys, $paramTable, $paramDBConn){
                $strSQL = "UPDATE $paramDBName.$paramTable SET ";
                for ($cont=0; $cont < count($paramSQLDatos); $cont++){
                        if ($cont == 0){
                                $strSQL.= "$paramSQLDatos[$cont] = '$paramData[$cont]'";
                        }
                        else{
                                $strSQL.=", $paramSQLDatos[$cont] = '$paramData[$cont]'";
                        }
                }
                $strSQL.=" WHERE ";
                for ($cont=0; $cont < count($paramSQLKeys); $cont++){
                        if ($cont == 0){
                                $strSQL.= "$paramSQLKeys[$cont] = '$paramKeys[$cont]' ";
                        }
                        else{
                                $strSQL.= "AND $paramSQLKeys[$cont] = '$paramKeys[$cont]' ";
                        }
                }

                $result = mysql_query("$strSQL",$paramDBConn);

                //check errors
                if (!$result) {
                        exit("ERROR: " . mysql_error() . "<BR>SQL = $strSQL<BR>modifyTable[#2]");
                }
                return true;
        }

        //Name: deleteData
        //Description:        DELETE a row in the database table
        //---------------------------------------------------
        function deleteData($paramData, $paramKeys, $paramSQLDatos, $paramSQLKeys, $paramTable, $paramDBConn){
                $strSQL = "DELETE FROM $paramDBName.$paramTable WHERE ";
                for ($cont=0; $cont < count($paramSQLKeys); $cont++){
                        $strSQL.= "$paramSQLKeys[$cont] = '$paramKeys[$cont]'";
                }

                $result = mysql_query("$strSQL",$paramDBConn);

                //check errors
                if (!$result) {
                        exit("ERROR: " . mysql_error() . "<BR>SQL = $strSQL<BR>modifyTable[#3]");
                        return false;
                }
                return true;
        }

        //Name: transferData
        //Description:        Loop through all the received rows and determine
        //                                the action to take for each one.
        //------------------------------------------------------------
        function transferData($DBconn){
                $colSQLData = $_POST["colSQLDatos"];
                $colSQLKeys = $_POST["colSQLLlaves"];
                $totColumns = count($colSQLData) + count($colSQLKeys);
                $SQLtable = $_POST["SQLTableName"];

                switch (detectButtonPressed()){
                        case "btnDelete":

                                break;
                        case "btnSave":
                                for($rowCount = 0; $rowCount < count($_POST["recordStatus"]); $rowCount++){
                                        $statusValue = "";

                                        unset($rowData);
                                        for($colCount = 0; $colCount < count($colSQLData); $colCount++){
                                                $rowData[] = $_POST[$colSQLData[$colCount]][$rowCount];
                                        }

                                        unset($rowKeys);
                                        for($colCount = 0; $colCount < count($colSQLKeys); $colCount++){
                                                $rowKeys[] = $_POST[$colSQLKeys[$colCount]][$rowCount];
                                        }

                                        if( isset($_POST["chkBox"][$rowCount]) ){
                                                $statusValue = "D";
                                        }
                                        else{
                                                $statusValue = $_POST["recordStatus"][$rowCount];
                                        }
                                        switch ( $statusValue ){
                                                case "U":
                                                        updateData($rowData, $rowKeys, $colSQLData, $colSQLKeys, $SQLtable, $DBconn);
                                                        break;
                                                case "A":
                                                        addData($rowData, $rowKeys, $colSQLData, $colSQLKeys, $SQLtable, $DBconn);
                                                        break;
                                                case "D":
                                                        deleteData($rowData, $rowKeys, $colSQLData, $colSQLKeys, $SQLtable, $DBconn);
                                                        break;
                                        }
                                }
                                break;
                }
        }
        //--------------------------------------------------
        // D E F I N E   P A R A M E T E R S
        //--------------------------------------------------
        // M O D I F Y   T H I S   S E C T I O N   O N L Y
        //--------------------------------------------------

        include 'db.php';

        //--------------------------------------------------
        //           E N D   O F   S E C T I O N
        //--------------------------------------------------

        //-----------------------
        // ***  S T A R T   ***
        //-----------------------
        //connect
        if(!$cid = mysql_connect($host,$usr,$pwd)) { exit("ERROR: " . mysql_error() . "<BR>Unable to connect to:$host\\$usr<BR>modifyTable[#4]"); }

        //open databse
        if (!mysql_select_db($db)) { exit("ERROR: " . mysql_error() . "<BR>$db<BR>loadTable[#5]"); }

        transferData($cid);

        mysql_close($cid);


        Redirect ("loadTable.php?tbl=" . $_POST["TableId"]);


?>