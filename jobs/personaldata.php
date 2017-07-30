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
	$applicantid=$_GET["search"];
	$_POST["submit"]="Find";
}

if(isset($_POST["submit"])){
	if($_POST["submit"]=="Save & Continue" || $_POST["submit"]=="Update & Continue"){
		//personal details
		$id =(!empty($_POST["id"])) ? $_POST["id"] : 'NULL';
		$applicantid =(!empty($_POST["applicantid"])) ? $_POST["applicantid"] : 'NULL';		
		$salutation = !empty($_POST["salutation"]) ? "'" . $_POST["salutation"] . "'" : 'NULL';
		$surname = !empty($_POST["surname"]) ? "'" . $_POST["surname"] . "'" : 'NULL';
		$mname = !empty($_POST["mname"]) ? "'" . $_POST["mname"] . "'" : 'NULL';
		$fname = !empty($_POST["fname"]) ? "'" . $_POST["fname"] . "'" : 'NULL';
		$sex = !empty($_POST["sex"]) ? "'" . $_POST["sex"] . "'" : 'NULL';
		$mstatus = !empty($_POST["mstatus"]) ? "'" . $_POST["mstatus"] . "'" : 'NULL';
		$dob = !empty($_POST["dob"]) ? "'" . dateconvert($_POST["dob"],1) . "'" : 'NULL';
		$nationality =(!empty($_POST["nationality"])) ? $_POST["nationality"] : 'NULL';
		$citizenship =(!empty($_POST["citizenship"])) ? $_POST["citizenship"] : 'NULL';
		$ctoforigin =(!empty($_POST["ctoforigin"])) ? $_POST["ctoforigin"] : 'NULL';
		$hbox = !empty($_POST["hbox"]) ? "'" . $_POST["hbox"] . "'" : 'NULL';
		$htown = !empty($_POST["htown"]) ? "'" . $_POST["htown"] . "'" : 'NULL';
		$hzip_postal = !empty($_POST["hzip_postal"]) ? "'" . $_POST["hzip_postal"] . "'" : 'NULL';
		$hcountry =(!empty($_POST["hcountry"])) ? $_POST["hcountry"] : 'NULL';
		$hphone = !empty($_POST["hphone"]) ? "'" . $_POST["hphone"] . "'" : 'NULL';
		$hmobile = !empty($_POST["hmobile"]) ? "'" . $_POST["hmobile"] . "'" : 'NULL';
		$hemail = !empty($_POST["hemail"]) ? "'" . $_POST["hemail"] . "'" : 'NULL';
		$obox = !empty($_POST["obox"]) ? "'" . $_POST["obox"] . "'" : 'NULL';
		$otown = !empty($_POST["otown"]) ? "'" . $_POST["otown"] . "'" : 'NULL';
		$ozip_postal = !empty($_POST["ozip_postal"]) ? "'" . $_POST["ozip_postal"] . "'" : 'NULL';
		$ocountry =(!empty($_POST["ocountry"])) ? $_POST["ocountry"] : 'NULL';
		$ophone = !empty($_POST["ophone"]) ? "'" . $_POST["ophone"] . "'" : 'NULL';
		$omobile = !empty($_POST["omobile"]) ? "'" . $_POST["omobile"] . "'" : 'NULL';
		$oemail = !empty($_POST["oemail"]) ? "'" . $_POST["oemail"] . "'" : 'NULL';
		$qualsumm = !empty($_POST["qualsumm"]) ? "'" . $_POST["qualsumm"] . "'" : 'NULL';
	}
	switch($_POST["submit"]){
	case "Save & Continue":
		$sql="INSERT INTO applicant (salutation,surname,mname,fname,sex,mstatus,dob,nationality,citizenship,ctoforigin,hbox,htown,hzip_postal,
				hcountry,hphone,hmobile,hemail,obox,otown,ozip_postal,ocountry,ophone,omobile,oemail,qualsumm)
			VALUES($salutation,$surname,$mname,$fname,$sex,$dob,$nationality,$citizenship,$ctoforigin,$hbox,$htown,$hzip_postal,
				$hcountry,$hphone,$hmobile,$hemail,$obox,$otown,$ozip_postal,$ocountry,$ophone,$omobile,$oemail,$qualsumm)";
		$results=query($sql,$conn);
		$msg[0]="Sorry applicants record not created";
		$msg[1]="Applicants's record successfull created";
		AddSuccess($results,$conn,$msg);
		echo "<meta http-equiv=\"Refresh\" content=\"2;url=./careerobjective.php\">";
		break;	
	case "Update & Continue":
		$memberid=$_POST["memberid"];
		$sql="UPDATE applicant SET id=$id,salutation=$salutation,surname=$surname,mname=$mname,fname=$fname,
				sex=$sex,mstatus=$mstatus,dob=$dob,nationality=$nationality,citizenship=$citizenship,ctoforigin=$ctoforigin,
				hbox=$hbox,htown=$htown,hzip_postal=$hzip_postal,hcountry=$hcountry,hphone=$hphone,
				hmobile=$hmobile,hemail=$hemail,obox=$obox,otown=$otown,ozip_postal=$ozip_postal,
				ocountry=$ocountry,ophone=$ophone,omobile=$omobile,oemail=$oemail,qualsumm=$qualsumm
			WHERE id=$_POST[id]";
		$results=query($sql,$conn);
		$msg[0]="Sorry applicants record not updated";
		$msg[1]="Applicants record successfull updated";
		AddSuccess($results,$conn,$msg);
		echo "<meta http-equiv=\"Refresh\" content=\"2;url=./careerobjective.php\">";
		break;
	case "Delete":
		$sql = "DELETE FROM applicant WHERE id=$id";
		break;
	case "Find":
		$sql = "SELECT * FROM applicant	WHERE applicantid=$applicantid";
		$results=query($sql,$conn);
		$applicant = fetch_object($results);		
		break;
	case "Skip>>":
		echo "<meta http-equiv=\"Refresh\" content=\"0;url=./careerobjective.php\">";
		break;				
	}
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Taifajobs - applicants</title>
<link href="css/main.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/epoch_styles.css"/>
<?php headericon(); ?>
<script language="JavaScript" src="js/highlight.js" type="text/javascript"></script>
<script type="text/javascript" src="js/formval.js"></script>
<script type="text/javascript" src="css/epoch_classes.js"></script>
<script type="text/javascript">
<!--
var request;
var dest;
var dp_cal;  

window.onload = function () {
	dp_cal  = new Epoch('epoch_popup','popup',document.getElementById('dob'));
};

function validateOnSubmit() {
	var elem;
    var errs=0;
	// execute all element validations in reverse order, so focus gets
    // set to the first one in error.
	if (!validatePresent (document.forms.personaldata.surname,'inf_surname')) errs += 1;
	if (!validatePresent (document.forms.personaldata.fname,'inf_fname')) errs += 1;
	if (!validateNum (document.forms.personaldata.obox,'inf_obox',0)) errs += 1;		
	if (!validateSelect (document.forms.personaldata.hcountry,'inf_hcountry',1)) errs += 1;
	if (!validateEmail (document.forms.personaldata.hemail,'inf_hemail',1)) errs += 1;
	if (!validateNum (document.forms.personaldata.hbox,'inf_hbox',0)) errs += 1;

	

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
<form action="personaldata.php" method="post" name="personaldata" id="personaldata" enctype="multipart/form-data">
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
      <th colspan="3" bgcolor="#CCCCCC"><strong>PERSONAL DETAILS</strong> </th>
    </tr>
    <tr>
      <td colspan="2"></input>
      <input type="hidden" name="id" value="<?php echo $applicant->id; ?>">
      <input type="hidden" name="applicantid" value="<?php echo $applicant->applicantid; ?>"></td>
    </tr>
    <tr>
      <td colspan="2"><em>Fields marked by <span class="warn">*</span> are required fields and must be filled in.</em></td>
    </tr>
    <tr>
      <td>Salutation/Surname         </td>
      <td><select name="salutation" id="salutation">
          <option value="">select title</option>
          <option value="Mr." <?php if($applicant->salutation=='Mr.') echo 'selected'; ?>>Mr.</option>
          <option value="Mrs." <?php if($applicant->salutation=='Mrs.') echo 'selected'; ?>>Mrs.</option>
          <option value="Miss" <?php if($applicant->salutation=='Miss') echo 'selected'; ?>>Miss</option>
          <option value="Dr" <?php if($applicant->salutation=='Dr') echo 'selected'; ?>>Dr.</option>
        </select>
        /
          <input name="surname" type="text" id="surname" value="<?php echo $applicant->surname; ?>"/><div id="inf_surname" class="warn">* </div></td>
      
    </tr>
    <tr>
      <td>Middle Name </td>
      <td><input name="mname" type="text" id="mname" value="<?php echo $applicant->mname; ?>"/></td>
    </tr>
    <tr>
      <td>First Name </td>
      <td><input name="fname" type="text" id="fname" value="<?php echo $applicant->fname; ?>"/>
        <div id="inf_fname" class="warn">* </div></td>
    </tr>
    <tr>
      <td>Sex</td>
      <td>
        <label><input type="radio" name="sex" value="M" <?php if($applicant->sex=='M') echo 'checked'; ?>>Male</label>
        <label><input type="radio" name="sex" value="F" <?php if($applicant->sex=='F') echo 'checked'; ?>>Female</label>
	</td>
    </tr>
    <tr>
      <td>Marital Status </td>
      <td><select name="mstatus" id="mstatus">
        <option value="">--select marital status--</option>
        <option value="Single" <?php if($applicant->mstatus=='Single') echo 'selected'?></option>Single</option>
        <option value="Married" <?php if($applicant->mstatus=='Married') echo 'selected'?>>Married</option>
        <option value="Divorced" <?php if($applicant->mstatus=='Divorced') echo 'selected'?>>Divorced</option>
        <option value="Widowed" <?php if($applicant->mstatus=='Widowed') echo 'selected'?>>Widowed</option>
        <option value="Separated" <?php if($applicant->mstatus=='Separated') echo 'selected'?>>Separated</option>
        <option value="Unspecified" <?php if($applicant->mstatus=='Unspecified') echo 'selected'?>>Unspecified</option>		
      </select></td>
    </tr>
    <tr>
      <td>Date of birth </td>
      <td><input name="dob" type="text" id="dob" value="<?php echo dateconvert($applicant->dob,2); ?>"/></td>
      
    </tr>
    <tr>
      <td>Nationality</td>
      <td><select name="nationality" id="nationality">
        <option value="">--select country--</option>
        <?php populate_select("countries","countryid","country",$applicant->nationality); ?>
      </select></td>
    </tr>
    <tr>
      <td>Country of Citizenship </td>
      <td><select name="citizenship" id="citizenship"">
        <option value="">--select country--</option>
        <?php populate_select("countries","countryid","country",$applicant->citizenship); ?>
      </select></td>
    </tr>
    <tr>
      <td>Country of Origin </td>
      <td><select name="ctoforigin" id="ctoforigin"">
        <option value="">--select country--</option>
        <?php populate_select("countries","countryid","country",$applicant->ctoforigin); ?>
      </select></td>
    </tr>
    <tr bgcolor="#CCCCCC">
      <td colspan="2"><strong>CONTACT DETAILS</strong></td>
    </tr>
    <tr>
      <td colspan="2" bgcolor="#CCCCCC"><strong> HOME/PERMANENT ADDRESS</strong> </td>
    </tr>
    <tr>
      <td>P. O. Box</td>
      <td><input name="hbox" type="text" id="hbox" value="<?php echo $applicant->hbox; ?>"/>
        <div id="inf_hbox" class="warn">* </div></td>
      
    </tr>
    <tr>
      <td>Town</td>
      <td><input name="htown" type="text" id="htown" value="<?php echo $applicant->htown; ?>"/></td>
    </tr>
    <tr>
      <td>Zip/Postal Code </td>
      <td><input name="hzip_postal" type="text" id="hzip_postal" value="<?php echo $applicant->hzip_postal; ?>"/></td>
    </tr>
    <tr>
      <td>Country</td>
      <td><select name="hcountry" id="hcountry">
        <option value="">--select country--</option>
        <?php populate_select("countries","countryid","country",$applicant->hcountry); ?>
      </select>
        <div id="inf_hcountry" class="warn">* </div></td>
    </tr>
    <tr>
      <td>Phone</td>
      <td><input name="hphone" type="text" id="hphone" value="<?php echo $applicant->hphone; ?>"/></td>
    </tr>
    <tr>
      <td>Mobile Number </td>
      <td><input name="hmobile" type="text" id="hmobile" value="<?php echo $applicant->hmobile; ?>"/></td>
    </tr>
    <tr>
      <td>Email</td>
      <td><input name="hemail" type="text" id="hemail" value="<?php echo $applicant->hemail; ?>"/>
        <div id="inf_hemail" class="warn">* </div> </td>
      
    </tr>
    <tr>
      <td colspan="2" bgcolor="#CCCCCC"><strong> OFFICE ADDRESS</strong> </td>
    </tr>
	<tr>
      <td>P. O. Box</td>
      <td><input name="obox" type="text" id="obox" value="<?php echo $applicant->obox; ?>"/>
        <div id="inf_obox" class="warn">* </div></td>
      
    </tr>
    <tr>
      <td>Town</td>
      <td><input name="otown" type="text" id="otown" value="<?php echo $applicant->otown; ?>"/></td>
    </tr>
    <tr>
      <td>Zip/Postal Code </td>
      <td><input name="ozip_postal" type="text" id="ozip_postal" value="<?php echo $applicant->ozip_postal; ?>"/></td>
    </tr>
    <tr>
      <td>Country</td>
      <td><select name="ocountry" id="ocountry">
        <option value="">--select country--</option>
        <?php populate_select("countries","countryid","country",$applicant->ocountry); ?>
      </select></td>
    </tr>
    <tr>
      <td>Phone</td>
      <td><input name="ophone" type="text" id="ophone" value="<?php echo $applicant->ophone; ?>"/></td>
    </tr>
    <tr>
      <td>Mobile Number </td>
      <td><input name="omobile" type="text" id="omobile" value="<?php echo $applicant->omobile; ?>"/></td>
    </tr>
    <tr>
      <td>Email</td>
      <td><input name="oemail" type="text" id="oemail" value="<?php echo $applicant->oemail; ?>"/> </td>
      
    </tr>
    <tr align="center">
      <td colspan="2"><input type="submit" name="submit" value="<?php echo ($_GET["action"]=="Find" || isset($_GET["search"])) ? "Update & Continue" : "Save & Continue"; ?>" onclick="return validateOnSubmit();"/>
        <input type="submit" name="submit" value="Skip>>"/>
		</td>
    </tr>

</table></td>
 <tr><td colspan="3" align="center"><?php footer(); ?></td></tr>
</table>
</div>
</form>
</body>
</html>