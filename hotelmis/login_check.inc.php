<?php
session_start();
/*****************************************************************************
/*Copyright (C) 2006 Tony Iha Kazungu
/*****************************************************************************
Hotel Management Information System (HotelMIS Version 1.0), is an interactive system that enables small to medium
sized hotels take guests bookings and make hotel reservations.  It could either be uploaded to the internet or used
on the hotel desk computers.  It keep tracks of guest bills and posting of receipts.  Hotel reports can alos be
produce to make work of the accounts department easier.

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
Or for snail mail. P. O. Box 938, Kilifi-80108, East Africa-Kenya.
/*****************************************************************************/
error_reporting(E_ALL & ~E_NOTICE);
//if user clicked on logout
if (isset($_POST['login']) && $_POST['login']=='Logout'){
	setcookie("data_login","");
	session_unset();
	session_destroy();
	header("Location: index.php");
}

// if the cookie doesn't exsist means the user hasn't been verified by the login page so send them
// back to the login page.
if(!isset($_COOKIE['data_login'])){
	session_unset();
	session_destroy();
	header("Location: index.php");
}else{
	$data_login=$_COOKIE['data_login'];
}

if($data_login) {     // if the cookie does exsist
  mysql_connect("localhost","root","sa") or die ("Whoops");  //connect to db
  $user = explode(" ","$data_login");   //explode cookie value (which is the '$username $password (note seperated by space)) and store values in $user. Check manual for more info on explode()
  $sql = "select * from users where loginname='$user[0]'";  //sql statment that uses the username from the cookie.
  $r = mysql_db_query("hotelmis",$sql);  //execute sql

  if(!mysql_num_rows($r)) {    // if there are no rows, means no matches for that username
    header("Location: index.php");   // so go back to the login page
  }

 	$chkusr = mysql_fetch_array($r); //if we got passed the last part, then get the username/password set that match that username
	/*if(unserialize(stripslashes($user[1])) != $chkusr[2]){ //if the password from cookie (notice we have to unserialize it) doesn't match the one from the database
    	header("Location: userrequest.php");    // go back to the login page
	}*/
	//todo - put some code so that this is only done once in the lifetime of a session.
	$_SESSION["admin"]=$chkusr["admin"];
	$_SESSION["guest"]=$chkusr["guest"];
	$_SESSION["reservation"]=$chkusr["reservation"];
	$_SESSION["booking"]=$chkusr["booking"];
	$_SESSION["agents"]=$chkusr["agents"];
	$_SESSION["rooms"]=$chkusr["rooms"];
	$_SESSION["billing"]=$chkusr["billing"];
	$_SESSION["rates"]=$chkusr["rates"];
	$_SESSION["lookup"]=$chkusr["lookup"];
	$_SESSION["reports"]=$chkusr["reports"];
}// if it did match then continue on to page and this ends up doing nothing :)

//function to check if user has access to the page
function access($page){
	switch($page){
		case 'admin':
			$access=$_SESSION["admin"];
			break;
		case 'guest':
			$access=$_SESSION["guest"];
			break;
		case 'reservation':
			$access=$_SESSION["reservation"];
			break;
		case 'booking':
			$access=$_SESSION["booking"];
			break;
		case 'agents':
			$access=$_SESSION["agents"];
			break;
		case 'rooms':
			$access=$_SESSION["rooms"];
			break;
		case 'billing':
			$access=$_SESSION["billing"];
			break;
		case 'rates':
			$access=$_SESSION["rates"];
			break;
		case 'lookup':
			$access=$_SESSION["lookup"];
			break;
		case 'reports':
			$access=$_SESSION["reports"];
			break;		
	}
	if ($access==0) exit("If you were brough over here it's because you do not have permission to view this page.");//header("Location: index.php");
}
?>