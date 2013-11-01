<?php
$idcsession = $_GET["idcsession"];
$qm = $_GET["m"];
$ql = $_GET["l"];
$qf = $_GET["f"];

include '../config.php';

$dblink = mysql_connect(DB_HOSTNAME, DB_USERNAME, DB_PASSWORD);
mysql_select_db(DB_DATABASE,$dblink);

$sql_statement = "INSERT INTO";

$result = mysql_query($sql_statement,$dblink);

if (!$result) {
    die('Invalid query: ' . mysql_error());
}
else {
	SELECT ULTIMO REGISTRO

	header('Location: ');
}
