<?php
    $server = "dario.cs.uwec.edu";
    $db_username = "EHLERSMJ4814";
    $db_password = "K8WVB0K6";
    error_reporting(E_ALL);
    mysql_connect("dario.cs.uwec.edu",$db_username,$db_password)
		or die("Could not connect to MySQL. The reported SQL error is:<br />".mysql_error());
	mysql_select_db($db_username)
		or die("Could not connect to database. The reported SQL error is:<br />".mysql_error());
?>