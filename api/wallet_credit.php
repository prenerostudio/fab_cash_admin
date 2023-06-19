<?php 
header('Content-Type:application/json');
header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Methods:POST');
header('Access-Control-Allow-Headers:Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods, Authoization, x-Requested-with');
include("../db_connection.php");
// $val=json_decode(file_get_contents("php://input"),true);
$wallet_amount=$_POST['wallet_amount'];
$u_phone=$_POST['u_phone'];
$v_id=$_POST['_v_id'];

if(isset($_POST['wallet_amount'])){

   
        $sql=" INSERT INTO `user_wallet`(`phone`, `wallet_amount`, `v_id`) VALUES ('$u_phone','$wallet_amount','$v_id');";
$r=mysqli_query($connection,$sql);
if($r){
    echo json_encode(array('message'=>"AmountAdded to Wallet Successfully",'status'=>true));
}
else{
    echo json_encode(array('message'=>"Error adding amount to wallet",'status'=>false));
}

    
    

}
else{
    echo json_encode(array('message'=>"Some Fileds are missing",'status'=>false));
}


?>