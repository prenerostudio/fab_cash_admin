<?php

include_once('../db_connection.php');
  if (@$_POST['u_fname']) {
    
   $u_fname = mysqli_real_escape_string($connection, $_POST['u_fname']);
   $u_phone = mysqli_real_escape_string($connection, $_POST['u_phone']);
   $u_dob = mysqli_real_escape_string($connection, $_POST['u_dob']);
   $u_pass = mysqli_real_escape_string($connection, $_POST['u_pass']);
   $u_cpass = mysqli_real_escape_string($connection, $_POST['u_cpass']);
   $u_status = "new";
   $u_verify= rand(9999,999999);
   $_SESSION['code'] = $u_verify; 
   $slct = "SELECT * FROM user_register WHERE u_phone ='$u_phone'";
    $runslt = mysqli_query($connection,$slct);
   if(mysqli_num_rows($runslt)>0){
   echo 'User already exist';
   }
   elseif($u_pass != $u_cpass ){
   echo 'Password not match';
  }
 else{
 $query="INSERT INTO user_register(u_fname, u_phone, u_dob, u_pass, u_status) VALUES ('$u_fname','$u_phone','$u_dob','$u_pass','$u_status')";
 $exe = mysqli_query($connection,$query);
 if ($exe) {
    echo 'User  Registered Successfully';
}
else{
  echo 'User not registered';
}
}
}


?>