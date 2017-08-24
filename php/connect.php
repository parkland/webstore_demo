<?php

if(!defined('INCLUDE_CHECK')) die('You are not allowed to execute this file directly');

/*
note that PHP 5.* has an issue with the mysqli libraries such that it attempts the IPv6 interface first. 
If you are experiencing long tmies to query the database, 
I suggest you use IP numbers here for the host. 
*/

/* Database config */

$db_host     = '';
$db_user     = 'webstore';
$db_pass     = '';
$db_port     = '';
$db_database = ''; 

/* End config */

$mysqli = new mysqli($db_host,$db_user,$db_pass,$db_database,$db_port) or die('Unable to establish a DB connection');
/* check connection */
if ($mysqli->connect_errno) {
    printf("Connect failed: %s\n", $mysqli->connect_error);
    exit();
}

$mysqli->query("SET names UTF8");

?>
