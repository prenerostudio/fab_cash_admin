<?php 
header('Content-Type:application/json');
header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Methods:POST');
header('Access-Control-Allow-Headers:Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods, Authoization, x-Requested-with');
include("../db_connection.php");
// $val=json_decode(file_get_contents("php://input"),true);
//$u_id=$_POST['u_fname'];
$u_id = $_POST['u_id'];
$date = $_POST['date'];

if(isset($_POST['u_fname'])){
    
      $sql2="SELECT * FROM `spin_wheel` WHERE u_id = '$u_id' AND date_added = '$date' ";
$r2=mysqli_query($connection,$sql2);
$datacheck=mysqli_fetch_all($r2,MYSQLI_ASSOC);
if(count($datacheck)>0){
     echo json_encode(array('message'=>"only one spin per day allowed.",'status'=>false));
}
else{
        $sql="INSERT INTO `spin_wheel`(`u_id`, `reward`, `date_added`) VALUES ('$u_id','$u_reward','$date')";
	

	$r=mysqli_query($connection,$sql);
if($r){
    echo json_encode(array('message'=>"Reward added Successfully",'status'=>true));
}
else{
    echo json_encode(array('message'=>"Error In adding rewards",'status'=>false));
}
}
    
    

}
else{
    echo json_encode(array('message'=>"Some Fileds are missing",'status'=>false));
}


?>