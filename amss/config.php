<?php
define('CURRENCY', '$');
define('WEB_URL', 'http://localhost/amss/');
define('ROOT_PATH', '/Applications/MAMP/htdocs/amss/');


define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', 'root');
define('DB_DATABASE', 'suns');
$link = mysql_connect(DB_HOSTNAME,DB_USERNAME,DB_PASSWORD) or die(mysql_error());mysql_select_db(DB_DATABASE, $link) or die(mysql_error());?>