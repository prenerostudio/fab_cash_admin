<?php
include("../db_connection.php");

header('Content-Type:application/json');
header('Access-Control-Allow-Origin:*');

$user_phone = $_POST['u_phone'];
$packageId = $_POST['package_id'];
$date = date('Y-m-d');

      $sql2="SELECT * FROM `watch_videos` WHERE `user_phone`='$user_phone' AND watch_date = '$date' AND package_id = '$packageId'";
$result=mysqli_query($connection,$sql2);
$datacheck=mysqli_fetch_all($result,MYSQLI_ASSOC);
if(count($datacheck)>0){
echo json_encode(array('message' => 'Already added these videos', 'status' => false));
} else {

// $sql="SELECT * FROM `videos` FULL OUTER JOIN watch_videos ON videos.video_id  WHERE watch_videos.user_phone != '$user_phone' AND watch_videos.watch_date != '$date' AND watch_videos.w_status != 'seen'";
$sql = "INSERT INTO `watch_videos`(user_phone, video_id, video_title, video_url, package_id, w_status, watch_date) 
SELECT '$user_phone', video_id, videos_title, videos_url, '$packageId', 'unseen', '$date' FROM videos" ;

	

$r=mysqli_query($connection,$sql);
if($r){
    // $output=mysqli_fetch_all($r,MYSQLI_ASSOC);
    // echo json_encode(array('data'=>$output));
    echo json_encode(array('message'=> 'Record added Successfully', 'status'=> true));
}else{
    echo json_encode(array('message' => 'No Record Found', 'status' => false));
}
}

?>


