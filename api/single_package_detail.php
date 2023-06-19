<?php 
header('Content-Type:application/json');
header('Access-Control-Allow-Origin:*');
include("../db_connection.php");
// $val=json_decode(file_get_contents("php://input"),true);
$packageId=$_POST['package_id'];
 
if(isset($_POST['package_id'])){
    
    $sql="SELECT * FROM `packages` WHERE `package_id`='$packageId'";
$r=mysqli_query($connection,$sql);
if($r){
    $output=mysqli_fetch_all($r,MYSQLI_ASSOC);
    echo json_encode(array('data'=>$output));
}else{
    echo json_encode(array('message'=>'No Package Found','status'=>false));
}
}
else{
    echo json_encode(array('message'=>"Some Fileds are missing",'status'=>false));
}

?>