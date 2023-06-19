<?php 
header('Content-Type:application/json');
header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Methods:POST');
header('Access-Control-Allow-Headers:Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods, Authoization, x-Requested-with');
include("../db_connection.php");
// $val=json_decode(file_get_contents("php://input"),true);
$u_id=$_POST['u_id'];
$u_reward=$_POST['reward'];
//$date=$_POST['date'];
$date = date('Y-m-d');

if(isset($_POST['u_id']) && isset($_POST['reward'])){
    

        $sql="INSERT INTO `spin_wheel`(`u_id`, `reward`, `date_added`) VALUES ('$u_id','$u_reward','$date')";
$r=mysqli_query($connection,$sql);
if($r){
    echo json_encode(array('message'=>"Your reward added Successfully",'status'=>true));
}
else{
    echo json_encode(array('message'=>"Error! your reward not added",'status'=>false));
}

    
    

}
else{
    echo json_encode(array('message'=>"Some Fileds are missing",'status'=>false));
}


?>