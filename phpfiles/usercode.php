<?php
include_once('../db_connection.php');

if(@$_POST['id']){

  $id = $_POST['id'];
   $querydlt = "DELETE FROM user_register WHERE user_id = '$id'";
$exedlt = mysqli_query($connection,$querydlt);
if ($exedlt) {
   echo 'data deleted';
}
else{
 echo 'data not deleted';
}
}

if(@$_POST['formid']){

   $id = $_POST['formid'];
    $querydlt = "DELETE FROM packages WHERE package_id = '$id'";
 $exedlt = mysqli_query($connection,$querydlt);
 if ($exedlt) {
    echo 'Package deleted';
 }
 else{
  echo 'Package not deleted';
 }
 }

 if(@$_POST['id1']){

   $id = $_POST['id1'];
    $querydlt = "DELETE FROM transition_img WHERE transition_id = '$id'";
 $exedlt = mysqli_query($connection,$querydlt);
 if ($exedlt) {
    echo 'Request deleted';
 }
 else{
  echo 'Request not deleted';
 }
 }
?>