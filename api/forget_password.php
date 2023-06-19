<?php 
header('Content-Type:application/json');
header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Methods:POST');
header('Access-Control-Allow-Headers:Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods, Authoization, x-Requested-with');
include("../db_connection.php");
// $val=json_decode(file_get_contents("php://input"),true);
 
$u_phone=$_POST['u_phone'];
 
$u_pass=$_POST['u_pass'];
 
 

if(isset($_POST['u_pass'])){
    
      $sql2="SELECT * FROM `user_register` WHERE `u_phone`='$u_phone'";
$r2=mysqli_query($connection,$sql2);
$datacheck=mysqli_fetch_all($r2,MYSQLI_ASSOC);
if(count($datacheck)>0){
    
    $sqlupdate ="UPDATE user_register SET `u_pass`='$u_pass' WHERE `u_phone`='$u_phone'";

 
$r=mysqli_query($connection,$sqlupdate);
if($r){
    echo json_encode(array('message'=>"Password Updated Successfully",'status'=>true));
}
else{
    echo json_encode(array('message'=>"Error In Updating Password".mysqli_error($connection),'status'=>false));
}
     
}
else{
    
echo json_encode(array('message'=>"This User Does Not Exist",'status'=>false));
}
    
    

}
else{
    echo json_encode(array('message'=>"Some Fileds are missing",'status'=>false));
}


?>