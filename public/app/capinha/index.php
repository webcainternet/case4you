<?php
session_start();

if (isset($_SESSION["userid"])) {
  //echo "Logado como:" . $_SESSION["userid"];
  $idcsession = $_SESSION["userid"];
}
else {
  //Randomiza nome do arquivo
  $date1 = date_create();
  $timestamp1 = date_timestamp_get($date1);
  $ramdomico4 = rand(1000,9999);
  $idsession = $timestamp1."".$ramdomico4;
  $_SESSION["userid"] = $idsession;

  //header('location: /app/');
  //echo "Nao logado:" . $_SESSION["userid"];
}

    $gmodelo = $_GET["m"];
    $glayout = $_GET["l"];
?>

<?php include 'var.tamanhos.php'; ?>

<!-- ddx.jscript -->
<?php include 'ddx.jscript.php'; ?>
<!-- ddx.jscript fim -->

<!-- ddx.layoyt -->
    <?php include 'ddx.layout.php'; ?>
<!-- ddx.layout fim -->