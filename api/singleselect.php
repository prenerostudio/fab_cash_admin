<?php 
header('Content-Type:application/json');
header('Access-Control-Allow-Origin:*');
include("../db_connection.php");
// $val=json_decode(file_get_contents("php://input"),true);
$u_phone=$_POST['u_phone'];
$u_pass=$_POST['u_pass'];
if(isset($_POST['u_phone'])){
    $sql="SELECT * FROM `user_register` left JOIN packages ON packages.package_id=user_register.package_id WHERE `u_phone`='$u_phone' && `u_pass`='$u_pass'";
$r=mysqli_query($connection,$sql);
if($r){
    $output=mysqli_fetch_all($r,MYSQLI_ASSOC);
    echo json_encode(array('data'=>$output));
}else{
    echo json_encode(array('message'=>'Nodata','status'=>false));
}
}
else{
    echo json_encode(array('message'=>"Some Fileds are missing",'status'=>false));
}

?>