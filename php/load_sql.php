<?php
/* Finds all the *.sql files in the sql directory, and loads the contents into an associative array */
/* This is to allow students to write individual sql statements into each file (one file per query) */

$sqls = [];
foreach (glob("../sql/*.sql") as $FQfilename) {
    $filename = basename($FQfilename)
    $sqls[$filename] = file_get_contents($FQfilename);
}

?>
