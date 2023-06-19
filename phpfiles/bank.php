<?php
include_once('../db_connection.php');

if(@$_POST['bank_id']){

  $id = $_POST['bank_id'];
   $querydlt = "DELETE FROM `bank_details` WHERE `bank_id` = '$id'";
$exedlt = mysqli_query($connection,$querydlt);
if ($exedlt) {
   echo 'Bank Account deleted';
}
else{
 echo 'data not deleted';
}
}


?>