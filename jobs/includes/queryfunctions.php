<?php
error_reporting(E_ALL & ~E_NOTICE);

function db_connect($HOST,$USER,$PASS,$DB,$PORT)
{
	$conn = mysql_connect($HOST . ":" . $PORT , $USER, $PASS);
	mysql_select_db($DB);
	return $conn;
}

//close a connection
function db_close($conn)
{
	mysql_close($conn);
}

function query($strsql,$conn)
{
	$rs = mysql_query($strsql,$conn);
	return $rs;
}

function num_rows($rs)
{
	return @mysql_num_rows($rs);
}

function fetch_array($rs)
{
	return mysql_fetch_array($rs);
}

function fetch_object($rs)
{
	return mysql_fetch_object($rs);
}

function free_result($rs)
{
	@mysql_free_result($rs);
}

function data_seek($rs,$cnt)
{
	@mysql_data_seek($rs, $cnt);
}

function error()
{
	return mysql_error();
}
?>
<?php
	define("HOST", "localhost");
	define("PORT", 3306);
	define("USER", "root");
	define("PASS", "root");
	define("DB", "taifa_jobs");
	define("smptserver",'smtpserver');
	define("supportemail",'emailadress');
	define("bcc",'emailaddress');
?>
