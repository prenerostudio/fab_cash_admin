<?php
include("../db_connection.php");

header('Content-Type:application/json');
header('Access-Control-Allow-Origin:*');

$u_id = $_POST['u_id'];
////$packageDays = $_POST['package_days'];
//$activeDate = date('Y-m-d',strtotime("+".$packageDays." days")

$sql="SELECT * FROM `active_packages` WHERE u_id = '$u_id'";
$r=mysqli_query($connection,$sql);
if(mysqli_num_rows($r) > 0){
    $output=mysqli_fetch_all($r,MYSQLI_ASSOC);
    echo json_encode(array('status' => true,'data'=>$output));
}else{
    echo json_encode(array('status' => false, 'message' => 'No Active Package Found'));
}

?>

