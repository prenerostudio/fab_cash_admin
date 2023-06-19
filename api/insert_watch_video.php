<?php 
header('Content-Type:application/json');
header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Methods:POST');
header('Access-Control-Allow-Headers:Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods, Authoization, x-Requested-with');
include("../db_connection.php");
// $val=json_decode(file_get_contents("php://input"),true);
$uPhone=$_POST['u_phone'];
$vId=$_POST['v_id'];
$date=$_POST['date'];

if(isset($_POST['u_phone']) ){
    
        $sql="INSERT INTO `watch_videos`(`user_phone`, `video_id`, `watch_date`) VALUES ('$uPhone','$vId','$date')";
$r=mysqli_query($connection,$sql);
if($r){
    echo json_encode(array('message'=>"Your Vido added Successfully",'status'=>true));
}
else{
    echo json_encode(array('message'=>"Error! your video not added",'status'=>false));
}


}
else{
    echo json_encode(array('message'=>"Some Fileds are missing",'status'=>false));
}


?>