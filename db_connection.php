<?php 
session_start();
if ($_SERVER['SERVER_NAME'] == 'localhost') {
$connection = mysqli_connect("localhost","root","","fabceudj_youtube");
} else { 
$connection = mysqli_connect("localhost","fabceudj_admin","Prenero1102/*","fabceudj_youtube");

}

?>