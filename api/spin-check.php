<?php 
header('Content-Type:application/json');
header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Methods:POST');
header('Access-Control-Allow-Headers:Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods, Authoization, x-Requested-with');
include("../db_connection.php");
// $val=json_decode(file_get_contents("php://input"),true);
$date=$_POST['date'];
$wallet_amount=$_POST['wallet_amount'];
$u_phone=$_POST['u_phone'];
$u_id=$_POST['u_id'];
$v_id=$_POST['v_id'];


if(isset($_POST['date'])){

	$d= "SELECT * FROM `spin_wheel` WHERE `date_added`='$date' AND u_id='$u_id'";	
	$dr=mysqli_query($connection, $d);
	
	if(mysqli_num_rows($dr)<2){
   
        $sql=" INSERT INTO `user_wallet`(`phone`, `wallet_amount`, `v_id`) VALUES ('$u_phone','$wallet_amount','$v_id');";
		$r=mysqli_query($connection,$sql);
	
		$sq="INSERT INTO `spin_wheel`(`u_id`, `reward`, `date_added`) VALUES ('$u_id','$wallet_amount','$date')";
		$sqr=mysqli_query($connection,$sq);
	
	
if($r){
    echo json_encode(array('message'=>"Amount Added to Wallet Successfully",'status'=>true));
}
else{
    echo json_encode(array('message'=>"Error adding amount to wallet",'status'=>false));
}

    }
	else{
		echo json_encode(array('message'=>"Daily Spin is over",'status'=>false));
	}
    

}
else{
    echo json_encode(array('message'=>"Some Fileds are missing",'status'=>false));
}


?>