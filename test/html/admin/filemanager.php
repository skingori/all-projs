<?php

require 'config.php';  

/* ----
####Creado por curda ####
####    Dim Works    ####
#### www.dimworks.tk ####
#### Copy Right 2005 ####
---- */

    error_reporting(0);
    //this turns off error reporting we doth
    //     is so that we don't get a warning for th
    //     e $action variable
    $destination=".";
    //the directory that the script index's
    //     if you want the current directory put a
    //     "." if you want another folder
    //put "foldername"
    if ($action=='delete')
    {
    $del = unlink("./$destination/$fle");
    }
    echo '<FONT SIZE="+2" COLOR="FF9A00"><CENTER>File manager</CENTER></FONT><BR><BR><TABLE BORDER=0 CELLSPACING=0 CELLPADDING=o><TR><TD ALIGN=center WIDTH=200 bgcolor=FFECCE><CENTER>Filename:</CENTER></TD><TD ALIGN=center WIDTH=200 bgcolor=FFECCE><CENTER>Functions:</CENTER></TD><TD ALIGN=center WIDTH=200 bgcolor=FFECCE><CENTER>Filesize(in bytes):</CENTER></TD><TD ALIGN=center WIDTH=150 bgcolor=FFECCE><CENTER>Filetype:</CENTER></TD><TD ALIGN=center WIDTH=150 bgcolor=FFECCE><CENTER>Created on:</CENTER></TD></TABLE>';
    $directory = opendir($destination);
    while( $file = readdir( $directory ) )
    {
    $file_ar[] = $file;
    }
    foreach( $file_ar as $file )
    {
    if( $file == ".." || $file == "." )
    {
    continue;
    }
    $type= strrchr($file,'.');
    $name=$file;
    $name2=$destination."/".$file;
    if($type==''){$type='dir';}
    $sizeoff=filesize($name2);
    $time=date("D M j Y",filectime($name2));
    if($time=='Wed Dec 31 1969'){$time='Unknown';}
    if($sizeoff==''){$sizeoff='Unknown';}
    if($sizeoff=='0'){$sizeoff='Unknown';}
    $file2 = dirname($name2);
    if($color == "FF9A00") {
    $color = "FFECCE";
    } else {
    $color = "FF9A00";
    }
    echo"<TABLE BORDER=0 CELLSPACING=0 CELLPADDING=o><TR><TD ALIGN=center WIDTH=200 bgcolor='$color'><a href='$uname/$file' target=_blank>$name</a></font></TD><TD ALIGN=center WIDTH=200 bgcolor='$color'><A HREF='$PHP_SELF?action=delete&fle=$file&der=$uname'>Delete</A><TD ALIGN=center WIDTH=200 bgcolor='$color'>$sizeoff</TD> <TD ALIGN=center WIDTH=150 bgcolor='$color'>$type</TD><TD ALIGN=center WIDTH=150 bgcolor='$color'>$time</TD></TABLE>";
    }
    echo "<CENTER><FONT SIZE='+2' COLOR=\"FF9A00\"><BR><BR>Uploader</FONT></CENTER><BR><BR><FORM ACTION='$PHP_SELF' METHOD=post enctype=\"multipart/form-data\">File:<BR><INPUT TYPE='file' size='20' name='filename'><BR><CENTER> <input type=\"hidden\" name=\"action\" value=\"uploadProg\"><INPUT TYPE='hidden' name='action' value='upload'><INPUT TYPE='submit' value='Upload File'></CENTER></FORM>";
    closedir($directory);
    if($action==''){$action='noaction';}else{$action=$action;}
    if($action=='upload')
    {
    $filename==$filename_name;
    $action=('uploadprog');
    $destination=".";
    copy($filename,$destination."/".$filename_name);
    echo "<h2>File Uploaded.</h2>";
    echo "<HEAD><META HTTP-EQUIV='Refresh' CONTENT=1></HEAD>";
    }
    if ($filename=="none") {echo("<h1>No File Selected....</h1>"); break;}
    uploadProg($filename,$filename_name);
    break;
    ?>