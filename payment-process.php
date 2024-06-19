<?php
session_start();
include('includes/config.php');
$paymentid=$_POST['payment_id'];
echo 'done';
$_SESSION['paymentid']=$paymentid;
?>
