<?php
session_start();
session_unset();
session_destroy();
$_SESSION['email']="";
$_SESSION['username']="";
echo "<script>window.open('../index.php','_self');</script>";
?>