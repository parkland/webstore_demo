<?php

/* test connect.php and load_sql.php */

define('INCLUDE_CHECK',1);
require "connect.php";
require "load_sql.php";

foreach($sqls as $query => $statement) {
    echo "$query: $statement\n";
}

/* close connection */
$mysqli->close();
?>
