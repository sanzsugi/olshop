<?php
	

	define('HOST', 'localhost');
	define('USER', 'root');
	define('PASS', '');
	define('DB', 'my_store');
	

	$connect = mysqli_connect(HOST, USER, PASS, DB) or die('tidak bisa konek');
	

?>