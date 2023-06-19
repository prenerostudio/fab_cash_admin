<?php 
header('Content-Type:application/json');
header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Methods:POST');
header('Access-Control-Allow-Headers:Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods, Authoization, x-Requested-with');
include("../db_connection.php");
// $val=json_decode(file_get_contents("php://input"),true);
$u_fname=$_POST['u_fname'];
$u_phone=$_POST['u_phone'];
$u_dob=$_POST['u_dob'];
$u_pass=$_POST['u_pass'];
$u_status=$_POST['u_status'];
$u_referal=$_POST['u_referal'];

if(isset($_POST['u_fname'])){
    
      $sql2="SELECT * FROM `user_register` WHERE `u_phone`='$u_phone'";
$r2=mysqli_query($connection,$sql2);
$datacheck=mysqli_fetch_all($r2,MYSQLI_ASSOC);
if(count($datacheck)>0){
     echo json_encode(array('message'=>"This User Already Exist",'status'=>false));
}
else{
        $sql="INSERT INTO `user_register`(`u_fname`, `u_phone`, `u_dob`, `u_pass`, `u_status`, `u_referal`) VALUES ('$u_fname','$u_phone','$u_dob','$u_pass','$u_status','$u_referal')";
$r=mysqli_query($connection,$sql);
if($r){
    echo json_encode(array('message'=>"User Registered Successfully",'status'=>true));
}
else{
    echo json_encode(array('message'=>"Error In Registring User",'status'=>false));
}
}
    
    

}
else{
    echo json_encode(array('message'=>"Some Fileds are missing",'status'=>false));
}


?>