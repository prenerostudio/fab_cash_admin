<?php
include_once('../db_connection.php');

if(@$_POST['id']){

  $id = $_POST['id'];
   $querydlt = "DELETE FROM videos WHERE video_id = '$id'";
$exedlt = mysqli_query($connection,$querydlt);
if ($exedlt) {
   echo 'Video deleted';
}
else{
 echo 'Video not deleted';
}
}

if(@$_POST['user_phone']){
  $role = $_SESSION['role'];
    $videoid = mysqli_real_escape_string($connection, $_POST['videoid']);
    $user_phone = mysqli_real_escape_string($connection, $_POST['user_phone']);

    $qryslct1= "SELECT * FROM watch_videos WHERE user_phone = '$user_phone' && videoid ='$videoid'";
      $exesict1 =mysqli_query($connection,$qryslct1);
      if(mysqli_num_rows($exesict1)>0){
        echo "Amount for this video already added to your wallet";
        }else{
           $queryupdt="INSERT INTO watch_videos(user_phone, videoid) VALUES ('$user_phone','$videoid')";
        $exeupdt = mysqli_query($connection,$queryupdt);
    if ($exeupdt) {
    if($role=="new"){
      $qryinsert ="INSERT INTO user_wallet(phone, wallet_amount, v_id) VALUES ('$user_phone','20','$videoid')";
    }elseif($role=="basic"){
      $qryinsert ="INSERT INTO user_wallet(phone, wallet_amount, v_id) VALUES ('$user_phone','30','$videoid')";
    }elseif($role=="standard"){
      $qryinsert ="INSERT INTO user_wallet(phone, wallet_amount, v_id) VALUES ('$user_phone','40','$videoid')";
    }else{
      $qryinsert ="INSERT INTO user_wallet(phone, wallet_amount, v_id) VALUES ('$user_phone','50','$videoid')";
    }
     $exeinsert = mysqli_query($connection,$qryinsert);
    if ($exeinsert) {
     echo 'Amount added to your wallet'; 
    }
    }else{
     echo 'Amount not added';
    }
  }
}
  ?>