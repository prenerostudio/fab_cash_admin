<?php 
header('Content-Type:application/json');
header('Access-Control-Allow-Origin:*');
include("../db_connection.php");
// $val=json_decode(file_get_contents("php://input"),true);
$u_phone=$_POST['u_phone'];
 
if(isset($_POST['u_phone'])){
    $sql="SELECT sum(`wallet_amount`) as balance  FROM `user_wallet` where `phone`='$u_phone'";
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

