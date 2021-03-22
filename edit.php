<?php

	include 'database.php';

	$id = $_POST['id'];
	$fistname = $_POST['fistname'];
	$lastname = $_POST['lastname'];
	$phone = $_POST['phone'];
	$address = $_POST['address'];

	$link->query("UPDATE student SET fistname = '".$fistname."',lastname = '".$lastname."',phone = '".$phone."',address = '".$address."' WHERE id = '".$id."'");


?>
