<?php

if(!defined('INCLUDE_CHECK')) die('You are not allowed to execute this file directly');


/* Database config */

$db_host     = '';
$db_user     = 'webstore';
$db_pass     = '';
$db_port     = '';
$db_database = ''; 

/* End config */

$mysqli = new mysqli($db_host,$db_user,$db_pass,$db_database,$db_port) or die('Unable to establish a DB connection');
$mysqli->query("SET names UTF8");

?>
