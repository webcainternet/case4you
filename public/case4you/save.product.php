<?php
$idcsession = $_GET["idcsession"];
$qm = $_GET["m"];
$ql = $_GET["l"];
$qf = $_GET["f"];

include '../config.php';

$dblink = mysql_connect(DB_HOSTNAME, DB_USERNAME, DB_PASSWORD);
mysql_select_db(DB_DATABASE,$dblink);

$result = mysql_query("select product_id from oc_product order by product_id desc limit 1");

while ($row = mysql_fetch_array($result, MYSQL_ASSOC)) {
    $ultimoid = $row["product_id"];
}

mysql_free_result($result);

echo $ultimoid;












/*





$sql_statement = "INSERT INTO";

$result = mysql_query($sql_statement,$dblink);

if (!$result) {
    die('Invalid query: ' . mysql_error());
}
else {
	SELECT ULTIMO REGISTRO

	header('Location: ');
}
*/

?>