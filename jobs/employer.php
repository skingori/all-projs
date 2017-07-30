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

if(isset($_GET["search"]) && !empty($_GET["search"])){
	//have this as a search function
	$id=$_GET["search"];
	$_POST["submit"]="Find";
}

if(isset($_POST["submit"])){
	if($_POST["submit"]=="Save & Continue" || $_POST["submit"]=="Update & Continue"){
		//personal details
		$employerid =(!empty($_POST["employerid"])) ? $_POST["employerid"] : 'NULL';
		$organization = !empty($_POST["organization"]) ? "'" . $_POST["organization"] . "'" : 'NULL';
		$contact = !empty($_POST["contact"]) ? "'" . $_POST["contact"] . "'" : 'NULL';
		$jobtitle = !empty($_POST["jobtitle"]) ? "'" . $_POST["jobtitle"] . "'" : 'NULL';
		$telephone = !empty($_POST["telephone"]) ? "'" . $_POST["telephone"] . "'" : 'NULL';
		$extension = !empty($_POST["extension"]) ? "'" . $_POST["extension"] . "'" : 'NULL';
		$mobile = !empty($_POST["mobile"]) ? "'" . $_POST["mobile"] . "'" : 'NULL';
		$fax = !empty($_POST["fax"]) ? "'" . $_POST["fax"] . "'" : 'NULL';
		$email = !empty($_POST["email"]) ? "'" . $_POST["email"] . "'" : 'NULL';
		$box = !empty($_POST["box"]) ? "'" . $_POST["box"] . "'" : 'NULL';
		$town = !empty($_POST["town"]) ? "'" . $_POST["town"] . "'" : 'NULL';
		$zip_postal = !empty($_POST["zip_postal"]) ? "'" . $_POST["zip_postal"] . "'" : 'NULL';
		$website = !empty($_POST["website"]) ? "'" . $_POST["website"] . "'" : 'NULL';
		$countryid =(!empty($_POST["countryid"])) ? $_POST["countryid"] : 'NULL';
	}
	switch($_POST["submit"]){
	case "Save & Continue":
		$sql="INSERT INTO employer (organization,contact,jobtitle,telephone,box,town,zip_postal,fax,extension,mobile,email,website,countryid)
			VALUES($organization,$contact,$jobtitle,$telephone,$box,$town,$zip_postal,$fax,$extension,$mobile,$email,$website,$countryid)";
		$results=query($sql,$conn);
		$msg[0]="Sorry employers record not created";
		$msg[1]="Employer's record successfull created";
		AddSuccess($results,$conn,$msg);
		break;
	case "Update & Continue":
		$sql="UPDATE employer SET employerid=$employerid,organization=$organization,contact=$contact,
				jobtitle=$jobtitle,telephone=$telephone,box=$box,town=$town,zip_postal=$zip_postal,
				fax=$fax,extension=$extension,email=$email,mobile=$mobile,
				website=$website,countryid=$countryid
			WHERE employerid=$_POST[employerid]";
		$results=query($sql,$conn);
		$msg[0]="Sorry employers record not updated";
		$msg[1]="Employers record successfull updated";
		AddSuccess($results,$conn,$msg);
		break;
	case "Delete":
		$sql = "DELETE FROM employer WHERE id=$id";
		break;
	case "Find":
		$sql = "SELECT * FROM employer WHERE employerid=$id";
		$results=query($sql,$conn);
		$employer = fetch_object($results);
		break;
	case "Skip>>":
		echo "<meta http-equiv=\"Refresh\" content=\"0;url=./jobs.php\">";
		break;
	}
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>tarclink- employers</title>
<link href="css/main.css" rel="stylesheet" type="text/css">
<?php headericon(); ?>
<script language="JavaScript" src="js/highlight.js" type="text/javascript"></script>
<script type="text/javascript" src="js/formval.js"></script>
<script type="text/javascript">
<!--
var request;
var dest;

function validateOnSubmit() {
	var elem;
    var errs=0;
	// execute all element validations in reverse order, so focus gets
    // set to the first one in error.
	if (!validateSelect (document.forms.employer.countryid,'inf_countryid',1)) errs += 1;
	if (!validatePresent (document.forms.employer.town,'inf_town')) errs += 1;
	if (!validateNum (document.forms.employer.box,'inf_box',0)) errs += 1;
	if (!validateNum (document.forms.employer.mobile,'inf_mobile',0)) errs += 1;
	if (!validateEmail (document.forms.employer.email,'inf_email',1)) errs += 1;
	if (!validatePresent (document.forms.employer.telephone,'inf_telephone')) errs += 1;
	if (!validatePresent (document.forms.employer.contact,'inf_contact')) errs += 1;
	if (!validatePresent (document.forms.employer.organization,'inf_organization')) errs += 1;

    if (errs>1)  alert('There are fields which need correction before sending');
    if (errs==1) alert('There is a field which needs correction before sending');

    return (errs==0);
};

function processStateChange(){
    if (request.readyState == 4){
        contentDiv = document.getElementById(dest);
        if (request.status == 200){
            response = request.responseText;
            contentDiv.innerHTML = response;
        } else {
            contentDiv.innerHTML = "Error: Status "+request.status;
        }
    }
}

function loadHTMLPost(URL, destination, button){
    dest = destination;
	mem_id = document.getElementById('imem_id').value;
	var str ='mem_id='+mem_id+'&button='+button;
	if (window.XMLHttpRequest){
        request = new XMLHttpRequest();
        request.onreadystatechange = processStateChange;
        request.open("POST", URL, true);
        request.setRequestHeader("Content-Type","application/x-www-form-urlencoded; charset=UTF-8");
		request.send(str);
    } else if (window.ActiveXObject) {
        request = new ActiveXObject("Microsoft.XMLHTTP");
        if (request) {
            request.onreadystatechange = processStateChange;
            request.open("POST", URL, true);
            request.send();
        }
    }
}
//-->
</script>
</head>
<body bgcolor="#FFFFFF">
<form action="employer.php" method="post" name="employer" id="employer" enctype="multipart/form-data">
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
      <th colspan="3" bgcolor="#CCCCCC"><strong>Employer data </strong> </th>
    </tr>
    <tr>
      <td colspan="2"></input>
      <input type="hidden" name="id" value="<?php echo $employer->id; ?>">
      <input type="hidden" name="employerid" value="<?php echo $employer->employerid; ?>"></td>
    </tr>
    <tr>
      <td colspan="2"><em>Fields marked by * are required fields and must be filled in.</em></td>
    </tr>
    <tr>
      <td>Organization</td>
      <td><input name="organization" type="text" id="organization" value="<?php echo $employer->organization; ?>"/>
        <div id="inf_organization" class="warn">* </div></td>
    </tr>
    <tr>
      <td>Contact Person </td>
      <td><input name="contact" type="text" id="contact" value="<?php echo $employer->contact; ?>"/>
        <div id="inf_contact" class="warn">* </div></td>
    </tr>
    <tr>
      <td>Job Title </td>
      <td><input name="jobtitle" type="text" id="jobtitle" value="<?php echo $employer->jobtitle; ?>"/></td>

    </tr>
    <tr>
      <td>Phone/Extension</td>
      <td><input name="telephone" type="text" id="telephone" value="<?php echo $employer->telephone; ?>"/>
        <input name="extension" type="text" id="extension" value="<?php echo $employer->extension; ?>" size="6"/>
        <div id="inf_telephone" class="warn">* </div></td>
    </tr>
    <tr>
      <td>Mobile Number </td>
      <td><input name="mobile" type="text" id="mobile" value="<?php echo $employer->mobile; ?>"/>
        <div id="inf_mobile" class="warn">* </div></td>
    </tr>
    <tr>
      <td>Fax</td>
      <td><input name="fax" type="text" id="fax" value="<?php echo $employer->fax; ?>"/></td>
    </tr>
    <tr>
      <td>Email</td>
      <td><input name="email" type="text" id="email" value="<?php echo $employer->email; ?>"/>
        <div id="inf_email" class="warn">* </div> </td>

    </tr>
    <tr>
      <td>P. O. Box </td>
      <td><input name="box" type="text" id="box" value="<?php echo $employer->box; ?>"/>
        <div id="inf_box" class="warn">* </div></td>
    </tr>
    <tr>
      <td>Town</td>
      <td><input name="town" type="text" id="town" value="<?php echo $employer->town; ?>"/>
        <div id="inf_town" class="warn">* </div></td>
    </tr>
    <tr>
      <td>Zip/Postal Code </td>
      <td><input name="zip_postal" type="text" id="zip_postal" value="<?php echo $employer->zip_postal; ?>"/></td>
    </tr>
    <tr>
      <td>Web Site: </td>
      <td><input name="website" type="text" id="website" value="<?php echo $employer->website; ?>"/></td>
    </tr>
    <tr>
      <td>Country</td>
      <td><select name="countryid" id="countryid">
        <option value="">--select country--</option>
        <?php populate_select("countries","countryid","country",$employer->countryid); ?>
      </select>
        <div id="inf_countryid" class="warn">* </div></td>
    </tr>
    <tr align="center">
      <td colspan="2"><input type="submit" name="submit" value="<?php echo ($_GET["action"]=="Find" || isset($_GET["search"])) ? "Update & Continue" : "Save & Continue"; ?>" onclick="return validateOnSubmit();"/>
        <input type="submit" name="submit" value="Skip>>" />
		</td>
    </tr>

</table></td>
 <tr><td colspan="3" align="center"><?php footer(); ?></td></tr>
</table>
</div>
</form>
</body>
</html>
