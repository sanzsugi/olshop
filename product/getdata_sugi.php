<?php
	include 'connect_sugi.php';

	$queryResult=$connect->query("SELECT * FROM product");
	
	$result=array();

while($fetchData=$queryResult->fetch_assoc()){
    $result[]=$fetchData;
}

echo json_encode($result);

?>