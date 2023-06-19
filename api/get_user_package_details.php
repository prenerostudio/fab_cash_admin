<?php 
header('Content-Type:application/json');
header('Access-Control-Allow-Origin:*');
include("../db_connection.php");
// $val=json_decode(file_get_contents("php://input"),true);
$u_id=$_POST['u_id'];
 
if(isset($_POST['u_id'])){
    $sql="SELECT * FROM `user_register` INNER JOIN packages ON packages.package_id=user_register.package_id WHERE user_id='$u_id'";
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