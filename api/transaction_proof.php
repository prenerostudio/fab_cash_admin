<?php 
header('Content-Type:application/json');
header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Methods:POST');
header('Access-Control-Allow-Headers:Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods, Authoization, x-Requested-with');
include("../db_connection.php");
// $val=json_decode(file_get_contents("php://input"),true);
 
$u_phone=$_POST['u_phone'];

$uploadedfile=$_POST['fileToUpload'];
 $package_id=$_POST['package_id'];

   $target_dir = "transaction/";
   $img_name=time().basename($_FILES["fileToUpload"]["name"]);
$target_file = $target_dir .$img_name;
$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
// Check if image file is a actual image or fake image
if(isset($_POST["u_phone"])) {
    
    
  $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
  if($check !== false) {
     
    $uploadOk = 1;
  } else {
    
    $uploadOk = 0;
  }

 
    
    
if ($uploadOk == 0) {
  echo "Sorry, your file was not uploaded.";
// if everything is ok, try to upload file
} 
else {
    
  if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
    
    
    
     $sql="INSERT INTO `transition_img`(`transition_pic`, `user_phone`, `package_id`) VALUES (' $img_name','$u_phone','$package_id')";
$r=mysqli_query($connection,$sql);
if($r){
    $mydate=date("Y/m/d");
      $sql2="UPDATE `user_register` SET `package_id`='$package_id',`package_start_date`=  '$mydate' WHERE `u_phone`='$u_phone'";
$r2=mysqli_query($connection,$sql2);
if($r2){
     echo json_encode(array('message'=>"Your Reciept have been recieved Successfully",'status'=>true));
}
else{
    echo json_encode(array('message'=>"Error In Reciept Uploading",'status'=>false));
}
}
else{
    echo json_encode(array('message'=>"Error In Reciept Uploading",'status'=>false));
}
    
  } else
  {
    echo "Sorry, there was an error uploading your file.";
  }
    
    
 
}
      

}
else{
    echo "some fields are missing";
}



    
 
 

?>