<?php
error_reporting(E_ALL & ~E_NOTICE);
session_start();
/*****************************************************************************
/*Copyright (C) 2008 Tony Iha Kazungu
/*****************************************************************************
Job Recruitment System (Taifajobs Version 1.0), is an interactive system that enables small to medium
sized organization keep track of job applications and advertisement.  It could either be uploaded to the internet or used
on the local intranet.  It keep tracks of job applications and applicants resume.  It can be linked to the HR system as the starting point to
shortlisting of candidates.

This program is free software; you can redistribute it and/or modify it under the terms
of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License,
or (at your option) any later version.
This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
See the GNU General Public License for more details.
You should have received a copy of the GNU General Public License along with this program;
if not, write to the Free Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA or
check for license.txt at the root folder
/*****************************************************************************
For any details please feel free to contact me at taifa@users.sourceforge.net
Or for snail mail. P. O. Box 938, Kilifi-80108, East Africa-Kenya. Mobile Phone 254-0725-547006
/*****************************************************************************/
include_once('includes/queryfunctions.php');
include_once('includes/functions.php');
$conn=mysql_connect(HOST . ":" . PORT , USER, PASS);
if (!$conn) {
    die('Could not connect: ' . mysql_error());
}
mysql_select_db(DB);

//check if user is logged in
SignedIn();

//check if user has clicked on logout button
if(isset($_POST["submit"]) && $_POST["submit"]=='Logout') LogOut();
?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>tarclink - members</title>
<link href="css/main.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/epoch_styles.css"/>
<?php headericon(); ?>
<script language="JavaScript" src="js/highlight.js" type="text/javascript"></script>
</head>
<body bgcolor="#FFFFFF">
<form action="cvbuilder.php" method="post" name="cvbuilder" id="cvbuilder" enctype="multipart/form-data">
<div align="center">
<table>
 <tr>
   <td colspan="3" align="right"><?php mainheader(); ?></td>
 </tr>
 <tr>
   <th><?php loginheader(); ?></th>
   <th colspan="2"><?php profileheader(); ?></th>
 </tr>
 <tr>
 <td valign="top" align="left"><?php leftmenu(); ?></td>
 <td colspan="2" align="left"><table border="0">
    <tr>
      <th colspan="4" bgcolor="#CCCCCC"><strong>Please make sure all the mandatory sections are filled in. Details can be changed any time you login to the website. <br>
        <img src="images/check-r.gif" width="16" height="16">- Completed sections. <br>
        <img src="images/check-w.gif" width="16" height="16">- Yet to be completed sections.</strong></th>
    </tr>
    <tr>
      <td><a href="personaldata.php?search=<?php echo $_SESSION[userid]; ?>">Personal Data</a> </td>
      <td>Mandatory</td>
      <td><?php StatusComplete('applicant'); ?></td>

    </tr>
    <tr>
      <td><a href="careerobjective.php">Career Objective</a> </td>
      <td>Optional</td>
      <td><?php StatusComplete('objective'); ?></td>

    </tr>
    <tr>
      <td><a href="qualsumm.php">Summary of Qualifications</a></td>
      <td>Optional</td>
      <td><?php StatusComplete('applicant'); ?></td>

    </tr>
    <tr>
      <td><a href="profexp.php">Professional Experience</a> </td>
      <td>Optional</td>
      <td><?php StatusComplete('experience'); ?></td>
    </tr>
    <tr>
      <td><a href="education.php">Education</a></td>
      <td>Mandatory</td>
      <td><?php StatusComplete('education'); ?></td>
    </tr>
    <tr>
      <td><a href="training.php">Training/Workshop</a></td>
      <td>Optional</td>
      <td><?php StatusComplete('training'); ?></td>
    </tr>
    <tr>
      <td><a href="publications.php">Publication</a></td>
      <td>Optional</td>
      <td><?php StatusComplete('publication'); ?></td>
    </tr>
    <tr>
      <td><a href="profmem.php">Professional Membership</a></td>
      <td>Optional</td>
      <td><?php StatusComplete('professional'); ?></td>
    </tr>
    <tr>
      <td><a href="language.php">Language Skill</a> </td>
      <td>Mandatory</td>
      <td><?php StatusComplete('language'); ?></td>
    </tr>
    <tr>
      <td><a href="reference.php">Reference</a></td>
      <td>Optional</td>
      <td><?php StatusComplete('referee'); ?></td>
    </tr>
    <tr align="center">
      <td colspan="3">&nbsp;		  </td>
    </tr>

</table></td>
 <tr><td colspan="3" align="center"><?php footer(); ?></td></tr>
</table>
</div>
</form>
</body>
</html>
