<?php 
header('Content-Type:application/json');
header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Methods:POST');
header('Access-Control-Allow-Headers:Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods, Authoization, x-Requested-with');
include("../db_connection.php");
// $val=json_decode(file_get_contents("php://input"),true);
$u_id=$_POST['u_id'];
$amount=$_POST['amount'];
$banktype=$_POST['banktype'];
$accountnumber=$_POST['accountnumber'];
$trans_id = $_POST['trans_id'];
$date = date('Y-m-d');
 

if(isset($_POST['u_id'])){
    
 $sql="INSERT INTO `user_topup`(`u_id`, `amount`, `banktype`, `account_number`, `trans_id`,  `date_added`) VALUES ('$u_id','$amount','$banktype','$accountnumber','$trans_id','$date')";
       // $sql="INSERT INTO `user_topup`(`u_id`, `banktype`, `account_number`, `trans_id`, `date_added`) VALUES ('$u_id','$banktype','$accountnumber', '$trans_id','$date')";
$r=mysqli_query($connection,$sql);
if($r){
    echo json_encode(array('message'=>"Topup added  Successfully",'status'=>true));
}
else{
    echo json_encode(array('message'=>"Error In adding Topup",'status'=>false));
}


}
    
    

 

?>