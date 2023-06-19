<?php 
header('Content-Type:application/json');
header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Methods:POST');
header('Access-Control-Allow-Headers:Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods, Authoization, x-Requested-with');
include("../db_connection.php");
// $val=json_decode(file_get_contents("php://input"),true);
 
$u_id=$_POST['u_id'];

$uploadedfile=$_POST['fileToUpload'];
 

   $target_dir = "uploads/".$_FILES["fileToUpload"]["name"];
$target_file = $target_dir .  $_FILES["fileToUpload"]["name"];
$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
// Check if image file is a actual image or fake image
if(isset($_POST["u_id"])) {
    
    
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
    
  if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_dir )) {
    
    $img_name=basename($_FILES["fileToUpload"]["name"]);
    
     $sql="UPDATE `user_register` SET `u_pic`='$img_name' WHERE `user_id`='$u_id'";
$r=mysqli_query($connection,$sql);
if($r){
    echo json_encode(array('message'=>"profile pic Uploaded Successfully",'status'=>true));
}
else{
    echo json_encode(array('message'=>"Error In profile pic Uploading",'status'=>false));
}
    
  } else
  {
       $img_name=basename($_FILES["fileToUpload"]["name"]);
    echo "Sorry, there was an error uploading your file.dsadadasd";
  }
    
    
 
}
      

}else{
    echo "some fields are missing";
}



    
 
 

?>