<?php 
header('Content-Type:application/json');
header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Methods:POST');
header('Access-Control-Allow-Headers:Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods, Authoization, x-Requested-with');
include("../db_connection.php");
// $val=json_decode(file_get_contents("php://input"),true);
$u_id=$_POST['u_id'];
$package_id=$_POST['package_id'];
$package_name=$_POST['package_name'];
$package_days=$_POST['package_days'];
$package_price = $_POST['package_price'];
$date=$_POST['date'];
$phone=$_POST['phone'];


if(isset($_POST['u_id'])){
    

        $sql="INSERT INTO `active_packages`(`u_id`, `package_id`, `package_name`, `package_days`, `package_price`, `active_date`) VALUES ('$u_id','$package_id','$package_name','$package_days','$package_price','$date')";
$r=mysqli_query($connection,$sql);
if($r){
    
	$walletsql = "INSERT INTO `user_wallet`(`u_id`, `phone`, `wallet_amount`) VALUES ('$u_id','$phone','$package_price')";
    $walletr=mysqli_query($connection,$walletsql);
 
    echo json_encode(array('message'=>"Package activated Successfully",'status'=>true));
}
else{
    echo json_encode(array('message'=>"Error! Package not activated",'status'=>false));
}

    
    

}
else{
    echo json_encode(array('message'=>"Some Fileds are missing",'status'=>false));
}


?>