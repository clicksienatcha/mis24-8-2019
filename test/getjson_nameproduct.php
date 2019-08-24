<?php
	ini_set('display_errors', 1);
	error_reporting(~0);

	$serverName = "localhost";
	$userName = "root";
	$userPassword = "";
	$dbName = "moacmis";

	$conn = mysqli_connect($serverName,$userName,$userPassword,$dbName);
	$sql = "SELECT a.name AS productname,a.id,
	b.order as list_order,b.name  as list_name ,
	c.value as sublist_value ,c.name as subname  ,b.id as list_id
	FROM product as a
	INNER JOIN listdata as b
	on a.id = b.product_id
	INNER JOIN sublist as c
	on b.id = c.list_id WHERE a.id='".$_GET['id']."'  ORDER BY b.order ASC";
	mysqli_set_charset($conn,"utf8");
	$query = mysqli_query($conn,$sql);
	if (!$query) {
		printf("Error: %s\n", $conn->error);
		exit();
	}
	$resultArray = array();
	$i=1;
	while($result = mysqli_fetch_array($query,MYSQLI_ASSOC))
	{

	

    //echo $result['productname'];
    //echo $result['listname'];
	//echo $result['list_order']."<BR>";
	if($result['list_order']==1&&$result['list_order']==$i){
		array_push($resultArray,array('head'=>'1) ครัวเรือนเกษตร (ครัวเรือน) (61)'));
		$i++;
	}
	if($result['list_order']==2&&$result['list_order']==$i){
		array_push($resultArray,array('head'=>'เนื้อที่'));
		$i++;
	}

	if($result['list_order']==3&&$result['list_order']==$i){
		array_push($resultArray,array('head'=>'3) ปริมาณผลผลิต(ตัน)(62)'));
		$i++;
	}
	if($result['list_order']==4&&$result['list_order']==$i){
		array_push($resultArray,array('head'=>'4) ความต้องการผลผลิต (ตัน)'));
		$i++;
	}
	if($result['list_order']==5&&$result['list_order']==$i){
		array_push($resultArray,array('head'=>'5) การใช้ในประเทศ (ตัน)'));
		$i++;
	}
	if($result['list_order']==6&&$result['list_order']==$i){
		array_push($resultArray,array('head'=>'6) การส่งออก (ตัน)(ม.ค. - มิ.ย.62)'));
		$i++;
	}
	if($result['list_order']==7&&$result['list_order']==$i){
		array_push($resultArray,array('head'=>'7) สต๊อกผลผลิต(ตัน)'));
		$i++;
	}
	if($result['list_order']==8&&$result['list_order']==$i){
		array_push($resultArray,array('head'=>$result['list_name']));
		$i++;
	}
	if($result['list_order']==9&&$result['list_order']==$i){
		array_push($resultArray,array('head'=>$result['list_name']));
		$i++;
	}
	if($result['list_order']==10&&$result['list_order']==$i){
		array_push($resultArray,array('head'=>$result['list_name']));
		$i++;
	}
	if($result['list_order']==11&&$result['list_order']==$i){
		array_push($resultArray,array('head'=>$result['list_name']));
		$i++;
	}else{
		//array_push($resultArray,array('head'=>''));
	}
	
		array_push($resultArray,$result);
		
		
	}
	mysqli_close($conn);

	echo json_encode($resultArray);
?>