<?php
	ini_set('display_errors', 1);
	error_reporting(~0);

	$serverName = "localhost";
	$userName = "root";
	$userPassword = "";
	$dbName = "moacmis";

	$conn = mysqli_connect($serverName,$userName,$userPassword,$dbName);
	$sql = "SELECT * FROM product";
	mysqli_set_charset($conn,"utf8");
	$query = mysqli_query($conn,$sql);
	if (!$query) {
		printf("Error: %s\n", $conn->error);
		exit();
	}
	$resultArray = array();
	while($result = mysqli_fetch_array($query,MYSQLI_ASSOC))
	{
    //echo $result['productname'];
    //echo $result['listname'];
    //echo $result['list_order'];
		array_push($resultArray,$result);
	}
	mysqli_close($conn);

	echo json_encode($resultArray);
?>