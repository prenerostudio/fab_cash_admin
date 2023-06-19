<?php 
     include_once('db_connection.php');
if ( $_SESSION['u_phone'] == "") {
	header('location:index.php');
  }
  session_destroy();
  header('location:index.php');
 ?>