<meta charset='urf-8'/>

<?php
	ini_set('display_errors', 1);
	error_reporting(~0);

	$serverName = "localhost";
	$userName = "root";
	$userPassword = "";
	$dbName = "moacmis";

	$conn = mysqli_connect($serverName,$userName,$userPassword,$dbName);
  $sql = "	SELECT a.name AS productname,a.id,
  b.order as list_order,b.name  as list_name ,
  c.value as sublist_value 
  FROM product as a
  INNER JOIN listdata as b
  on a.id = b.product_id
  INNER JOIN sublist as c
  on b.id = c.list_id  WHERE a.id ='".$_GET['id']."' ORDER BY b.order ASC ";
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