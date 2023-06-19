<?php
include("../db_connection.php");

header('Content-Type:application/json');
header('Access-Control-Allow-Origin:*');

$video_id=$_POST['w_video_id'];
 
$video_status=$_POST['video_status'];

if(isset($video_status)){

 $sqlupdate ="UPDATE `watch_videos` SET  `w_status`='$video_status' WHERE `wv_id`='$video_id'";

 
$r=mysqli_query($connection,$sqlupdate);
if($r){
    echo json_encode(array('message'=>"Video Status Updated Successfully",'status'=>true));
}
else{
    echo json_encode(array('message'=>"Error In Updating Video Status".mysqli_error($connection),'status'=>false));
}
}else{
     echo json_encode(array('message'=>"Somefields are missing",'status'=>false));
}


 

?>


 