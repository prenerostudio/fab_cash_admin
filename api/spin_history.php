<?php
include("../db_connection.php");

header('Content-Type:application/json');
header('Access-Control-Allow-Origin:*');

$u_id = $_POST['u_id'];
$date = $_POST['date'];

$sql="SELECT * FROM `spin_wheel` WHERE u_id = '$u_id' AND date_added = '$date' ";
$r=mysqli_query($connection,$sql);
if($r){
    $output=mysqli_fetch_all($r,MYSQLI_ASSOC);
    echo json_encode(array('data'=>$output));
}else{
    echo json_encode(array('message' => 'No Record Found', 'status' => false));
}

?>

