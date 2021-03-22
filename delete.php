<?php

	include 'database.php';

	$id = $_POST['id'];

	$link->query("DELETE FROM student WHERE id = '".$id."'");
