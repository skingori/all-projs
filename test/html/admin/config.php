<?
// Dim Works - copyright (c) 2005 Oliver Angel R.

define(ADMINUSER,'user');        //change 'admin' to a admin username
define(ADMINPASS,'pass');         //change 'password' to a admin password

if ($_SERVER['PHP_AUTH_USER'] != ADMINUSER || $_SERVER['PHP_AUTH_PW'] != ADMINPASS)
{
    header( "WWW-Authenticate: Basic realm=\"Authorization Required!\"" );
    header( "HTTP/1.0 401 Unauthorized" );
    echo 'Esto es lo para personas autorizadas o algun administrador de la web...';
    exit;
}

?>