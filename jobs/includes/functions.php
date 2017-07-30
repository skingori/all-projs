<?php

error_reporting(E_ALL & ~E_NOTICE);
include_once ("queryfunctions.php");

function populate_select($table,$fields_id,$fields_value,$selected){
	$conn=db_connect(HOST,USER,PASS,DB,PORT);
	$sql="Select $fields_id,$fields_value From $table Order By $fields_value";
	$results=query($sql,$conn);
	while ($row = fetch_object($results)){
		$SelectedField=($row->$fields_id==$selected) ? " selected" : "";
		echo "<option value='" . $row->$fields_id ."'". $SelectedField . ">" . $row->$fields_value . "</option>";
	}
	free_result($results);
}

//same as populate_select but has option of passing a sql statement
function Lookup($fields_id='',$fields_value='',$selected,$sql){
	$conn=db_connect(HOST,USER,PASS,DB,PORT);
	$results=query($sql,$conn);
	while ($row = fetch_object($results)){
		$SelectedField=($row->$fields_id==$selected) ? " selected" : "";
		echo "<option value=" . $row->$fields_id . $SelectedField . ">" . $row->$fields_value . "</option>";
	}
	free_result($results);
}

function SignedIn()
{
    if (!isset($_SESSION["userid"])) die("<center><font color=red>You have not yet Logged in.<a href=login.php>Please click here to log in.</a></font><center>");
}

function LogOut()
{
	$iappid=0;
	$_SESSION = array();
	session_destroy();
	echo "<center><font color=\"#0033CC\"><b>Session successful ended.</b></font></center>";
	echo "<meta http-equiv=\"Refresh\" content=\"2;url=./index.php\">"; //put index.php
}

function loginheader1(){
	$user = $_SESSION["user"];
	if(isset($_SESSION["userid"])){
	 echo "<center><a href=\"index.php\">Home</a>::
			<a href=\"myprofile.php\">My Profile</a>::
			<a href=\"vacancies.php\">Vacancies</a>";
	}
	if(isset($_SESSION["userid"])) echo "<br><img src=\"images/s_loggoff.png\" width=\"16\" height=\"16\">";
	echo "<input type=\"submit\" name=\"submit\" value=\"";
	echo isset($_SESSION["userid"]) ? "Logout" : "Login"; echo "\"><b>$user<b></center>";
}

function headericon(){
	echo "<link REL=\"shortcut icon\" HREF=\"favicon.ico\"/>";
	echo "<link REL=\"icon\" HREF=\"favicon.ico\"/>";
}

function profileheader(){
	echo "<table border=\"0\" align=\"center\">
	 <tr>";
    if ($_SESSION["usercategory"]=='A'){
	 echo "<th scope=\"col\"><a href=\"myjobs.php\">My Taifa Jobs</a> ::</th>
	 <th scope=\"col\"><a href=\"cvbuilder.php\">Build/Edit My CV</a> ::</th>";
    }

	if ($_SESSION["usercategory"]=='E'){
	 echo "<th scope=\"col\"><a href=\"applicants.php\">My Applicants</a> ::</th>
		<th scope=\"col\"><a href=\"jobs.php\">Create/Post Jobs</a> ::</th>";
    }
	if ($_SESSION["usercategory"]=='D'){
	 echo "<th scope=\"col\"><a href=\"users.php\">Users</a> ::</th>";
    }
	echo "<th scope=\"col\"><a href=\"history.php\">History</a> ::</th>
    <th scope=\"col\"><a href=\"account.php\">Account</a> ::</th>
    <th scope=\"col\"><a href=\"mymessages.php\">Message Board</a></th>
	  </tr>
	</table>";
}

function leftmenu(){
	$user = $_SESSION["user"];
	if(isset($_SESSION["userid"])){
		switch ($_SESSION["usercategory"]){
		case 'A':
		 	//if applicant is logged in display this menu
		 echo "<table border=\"0\" valign=\"top\" width=\"100%\">
			<tr><td><a href=\"personaldata.php?search=$_SESSION[userid]\">Personal Data</a></td></tr>
			<tr><td><a href=\"careerobjective.php\">Career Objective</a></td></tr>
			<tr><td><a href=\"qualsumm.php\">Summary of Qualifications</a></td></tr>
			<tr><td><a href=\"profexp.php\">Professional Experience</a></td></tr>
			<tr><td><a href=\"education.php\">Education</a></td></tr>
			<tr><td><a href=\"training.php\">Trainings/Workshops</a></td></tr>
			<tr><td><a href=\"publications.php\">Publications</a></td></tr>
			<tr><td><a href=\"profmem.php\">Professional Memberships</a></td></tr>
			<tr><td><a href=\"language.php\">Language Skills</a></td></tr>
			<tr><td><a href=\"reference.php\">Reference</a></td></tr>
			<tr><td><a href=\"status.php\">Status</a></td></tr>
			<tr><td><a href=\"viewcv.php\" target=\"_blank\">Preview my CV</a></td></tr>
			<tr><td>&nbsp;</td></tr>";
			if ($_SESSION["admin"]==1) echo "<tr><td><b>Admin options</b></td></tr><tr><td><a href=\"users.php\">Users</td></tr>";
			echo "</table>";
			break;
		case 'E':
			//if employer is logged in display this menu
			echo "<table border=\"0\" valign=\"top\" width=\"100%\">
			<tr><td><a href=\"employer.php?search=$_SESSION[userid]\">Employers Data</a></td></tr>
			<tr><td><a href=\"jobs.php\">Post jobs</a></td></tr>
			<tr><td><a href=\"applicants.php\">Applicants</a></td></tr>
			<tr><td><a href=\"jobslist.php\">Job Lists</a></td></tr>
			<tr><td>&nbsp;</td></tr>";
			if ($_SESSION["admin"]==1) echo "<tr><td><b>Admin options</b></td></tr><tr><td><a href=\"users.php\">Users</td></tr>";
			echo "</table>";
			break;
		case 'D':
			//if employer is logged in display this menu
			echo "<table border=\"0\" valign=\"top\" width=\"100%\">
			<tr><td><b>Admin options</b></td></tr>
			<tr><td><a href=\"users.php\">Manage Users</td></tr>
			<tr><td><a href=\"jobslist.php\">Job Lists</td></tr>
			<tr><td>&nbsp;</td></tr>
			</table>";
			break;
		}
	}
}

function mainheader(){
	echo "<a href=\"index.php\"> HOME</a> | <a href=\"vacancies.php\">VACANCIES</a>";
}

function loginheader(){
   if(isset($_SESSION["userid"])) echo "<a href=\"myprofile.php\">My profile</a> | <a href=\"login.php?submit=Logout\">Logout</a><br>
   	You are logged as - $_SESSION[user]";
}

function GetUser(){
	// checks if the username is in use
	if (!get_magic_quotes_gpc()) {
		$_POST['loginname'] = addslashes($_POST['loginname']);
	}
	$check = mysql_query("SELECT loginname,email FROM users WHERE loginname = '$usercheck'")
	or die(mysql_error());
	$check2 = mysql_num_rows($check);

	//if the name exists loginname exists
	if ($check2 !== 0) {
		$msg = "<center><font color=\"#0033CC\"><b>Sorry, the loginname ".$_POST['loginname']." is already in use.</b></font></center>";
		return($msg);
	}

	// this makes sure both passwords entered match
	if ($_POST['pass'] !== $_POST['confpass']) {
		$msg = '<center><font color=\"#0033CC\"><b>Your passwords did not match.</b></font></center>';
		return($msg);
	}
}

function navigationtop(){
	global $rowsPerPage,$pageNum,$offset;
	$rowsPerPage = 20; // how many rows to show per page
	$pageNum = 1; // by default we show first page
	// if $_GET['page'] defined, use it as page number
	if(isset($_GET['page']))
	{
		$pageNum = $_GET['page'];
	}
	$offset = ($pageNum - 1) * $rowsPerPage; // counting the offset
}

function navigationbottom(){
	global $conn,$rowsPerPage,$pageNum;
	// how many rows we have in database
	$query   = "SELECT COUNT(sharesid) AS numrows FROM coop_shares";
	$result  = query($query,$conn) or die('Error, query failed');
	$row     = fetch_array($result, MYSQL_ASSOC);
	$numrows = $row['numrows'];

	// how many pages we have when using paging?
	$maxPage = ceil($numrows/$rowsPerPage);

	$self = $_SERVER['PHP_SELF'];

	// creating 'previous' and 'next' link
	// plus 'first page' and 'last page' link

	// print 'previous' link only if we're not
	// on page one
	if ($pageNum > 1)
	{
		$page = $pageNum - 1;
		$prev = " <a href=\"$self?page=$page\"><img src=\"images/prev.gif\" width=\"16\" height=\"16\" border=\"0\"></a> ";

		$first = " <a href=\"$self?page=1\"><img src=\"images/first.gif\" width=\"16\" height=\"16\" border=0></a> ";
	}
	else
	{
		$prev  = ' <img src="images/prevdisab.gif" width="16" height="16"> ';       // we're on page one, don't enable 'previous' link
		$first = ' <img src="images/firstdisab.gif" width="16" height="16"> '; // nor 'first page' link
	}

	// print 'next' link only if we're not
	// on the last page
	if ($pageNum < $maxPage)
	{
		$page = $pageNum + 1;
		$next = " <a href=\"$self?page=$page\"><img src=\"images/next.gif\" width=\"16\" height=\"16\" border=0></a> ";

		$last = " <a href=\"$self?page=$maxPage\"><img src=\"images/last.gif\" width=\"16\" height=\"16\" border=0></a> ";
	}
	else
	{
		$next = ' <img src="images/nextdisab.gif" width="16" height="16"> ';      // we're on the last page, don't enable 'next' link
		$last = ' <img src="images/lastdisab.gif" width="16" height="16"> '; // nor 'last page' link
	}

	// print the page navigation link
	echo $first . $prev . " Showing page <strong>$pageNum</strong> of <strong>$maxPage</strong> pages " . $next . $last;
}

function footer(){
	echo "Copyright &copy; Samson Mwangi ". date("Y");
}

function StatusComplete($file){
	$conn=db_connect(HOST,USER,PASS,DB,PORT);
	/* Creates SQL statement to retrieve the copies using the releaseID */
	$sql = "SELECT id FROM $file WHERE applicantid =$_SESSION[userid]";
	$rows=query($sql,$conn);
	$numrows = num_rows($rows);
	if($numrows>0) echo "<img src=\"images/check-r.gif\">";
	else echo "<img src=\"images/check-w.gif\">";
	free_result($rows);
}


function delete_copy(){
	/* makes connection */
	$conn=db_connect(HOST,USER,PASS,DB,PORT);
	/* Creates SQL statement to retrieve the copies using the releaseID */
	$sql = "DELETE FROM $file WHERE $recordid =" . $_POST['ID'];
	$results=query($sql,$conn);
	$msg[0]="Sorry ERROR in deletion";
	$msg[1]="Record successful DELETED";
	AddSuccess($results,$conn,$msg);
	/* Closes connection */
	mysql_close ($conn);
	/* calls get_data */
	//get_data();
};

function num_format($number, $digits) {
  return str_replace(",","",number_format($number,$digits));
};

function AddSuccess($results,&$conn,$msg){
	if ((int) $results==0){
		//should log mysql errors to a file instead of displaying them to the user
		echo 'Invalid query: ' . mysql_errno($conn). "<br>" . ": " . mysql_error($conn). "<br>";
		echo "<div align=\"center\"><h1>$msg[0]</h1></div>";
	}else{
		echo "<div align=\"center\"><h1>$msg[1]</h1></div>";
	}
}

function dateconvert($date,$func){
  if ($func == 1){ //insert conversion
    list($day, $month, $year) = split('[/.-]', $date);
    $year=trim($year);
	$date = "$year-$month-$day";
    return $date;
  }
  if ($func == 2){ //output conversion
    list($year, $month, $day) = split('[-.]', $date);
    if(trim($date)!=='') $date = "$day/$month/$year";
    return $date;
  }
}

//make this into a search script
function GetFieldsValue($sql){
	$conn=db_connect(HOST,USER,PASS,DB,PORT);
	$results=query($sql,$conn);
	if($results) $mem = fetch_object($results);
	return($mem->id);
}

//sendmail
function sendemail($commentinfo,$support_email='',$bcc='',$notify_owner_email,$subject)
{
	$text= $commentinfo;
	$text=stripslashes($text);
	$emailm=$text;
	$headers = "From: $support_email\n";
	$headers .= "Return-Path: <$support_email>\n";
	$headers .= "X-Sender: <$support_email>\n";
	$headers .= "X-Mailer: PHP\n"; //mailer
	$headers .= "X-Priority: 3\n"; //1 UrgentMessage, 3 Medium
	$headers .= "Bcc: $bcc\r\n";
	$smptserver = ini_set ( "SMTP", "mail.supremecluster.com" );
	ini_set ( "smtp_port", "25" );
	ini_get ("SMTP");
	mail("$notify_owner_email",$subject,$emailm,$headers);
}

//To have a report function
function vacancies($where=''){
	$conn=db_connect(HOST,USER,PASS,DB,PORT);
	$querystr="SELECT job.jobid,job.employerid,job.jobcategory,job.employeetype,job.city,job.countryid,job.jobtitle,
		job.summary,job.requirements,job.dateposted,job.dateclosing,job.pay,countries.country,employer.organization
	FROM job
		Left Join countries ON job.countryid = countries.countryid
		Left Join employer ON job.employerid = employer.employerid
		$where";
	$results=query($querystr,$conn);
	$today = getdate();
	//check if data is returned
	echo "<table width=\"90%\" border=\"0\">";
	echo "<tr><th colspan=\"9\">Vacancy List</th></tr>";
	while ($jobs = fetch_object($results)){
		//alternate row colour
		$j++;
		if($j%2==1){
			echo "<tr id=\"row$j\" onmouseover=\"javascript:setColor('$j')\" onmouseout=\"javascript:origColor('$j')\" bgcolor=\"#CCCCCC\">";
		}else{
			echo "<tr id=\"row$j\" onmouseover=\"javascript:setColor('$j')\" onmouseout=\"javascript:origColor('$j')\" bgcolor=\"#EEEEF8\">";
		}
			echo "<td align=\"left\"><h4>$jobs->jobtitle</h4></td></tr>";
			echo "<tr><td align=\"left\">$jobs->summary...</td></tr>";
			echo "<tr><td align=\"left\">
					<span class=\"boldtext\">Organization Name:-</span> $jobs->organization |
					<span class=\"boldtext\">Country:-</span> $jobs->country |
					<span class=\"boldtext\">Job Type:-</span> $jobs->employeetype |
					<span class=\"boldtext\">Date posted:-</span> $jobs->dateposted |
					<span class=\"boldtext\">Closing date:</span> $jobs->dateclosing
				</td></tr>";
			echo "<tr><td align=\"left\"><a href=\"jobdetails.php?jobid=$jobs->jobid\" target=\"_blank\">More Detail/Apply</a></td></tr>";
	}
	echo "</table>";
}
?>
