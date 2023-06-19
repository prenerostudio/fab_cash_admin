<?php
include("../db_connection.php");

header('Content-Type:application/json');
header('Access-Control-Allow-Origin:*');

$sql="SELECT * FROM `user_register` left JOIN packages ON packages.package_id=user_register.package_id";
$r=mysqli_query($connection,$sql);
if($r){
    $output=mysqli_fetch_all($r,MYSQLI_ASSOC);
    echo json_encode(array('data'=>$output));
}else{
    echo json_encode(array('message' => 'No Record Found', 'status' => false));
}

?>

