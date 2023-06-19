<?php
include("../db_connection.php");

header('Content-Type:application/json');
header('Access-Control-Allow-Origin:*');

$u_phone = $_POST['u_phone'];
$packageId = $_POST['package_id'];
$date = date('Y-m-d');

$sql="SELECT * FROM `watch_videos` WHERE user_phone='$u_phone' AND watch_date = '$date' AND package_id = '$packageId'";
$r=mysqli_query($connection,$sql);
if($r){
    $output=mysqli_fetch_all($r,MYSQLI_ASSOC);
    echo json_encode(array('data'=>$output, 'status' => true));
}else{
    echo json_encode(array('message' => 'No Record Found', 'status' => false));
}

?>

