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
$u_pic = $_POST['u_pic'];
$u_status=$_POST['u_status'];
$u_id=$_POST['u_id'];

if(isset($_POST['u_fname'])){
    
      $sql2="SELECT * FROM `user_register` WHERE `u_phone`='$u_phone'";
$r2=mysqli_query($connection,$sql2);
$datacheck=mysqli_fetch_all($r2,MYSQLI_ASSOC);
if(count($datacheck)>0){
     echo json_encode(array('message'=>"This User Already Exist",'status'=>false));
}
else{
    
$sqlupdate = "UPDATE user_register SET `u_fname`='$u_fname', `u_phone`='$u_phone', `u_dob`='$u_dob', `u_pass`='$u_pass', `u_pic`='$u_pic', `u_status`='$u_status' WHERE `user_id`='$u_id'";

 
$r=mysqli_query($connection,$sqlupdate);
if($r){
    echo json_encode(array('message'=>"User Updated Successfully",'status'=>true));
}
else{
    echo json_encode(array('message'=>"Error In Updating User".mysqli_error($connection),'status'=>false));
}
}
    
    

}
else{
    echo json_encode(array('message'=>"Some Fileds are missing",'status'=>false));
}


?>