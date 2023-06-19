<?php 
     include_once('db_connection.php');
    if (isset($_POST['submit'])) {
    
   $u_phone = $_POST['u_phone'];
   $u_pass = $_POST['u_pass'];
  

  $slct = "SELECT * FROM user_register WHERE u_phone ='$u_phone' && u_pass ='$u_pass'";
  $run = mysqli_query($connection,$slct);
  $row =mysqli_fetch_array($run);
    if (mysqli_num_rows($run)==1) {
        $_SESSION['u_phone'] = $u_phone;
          $_SESSION['role'] = $row['u_status'];
       
        header('location:dashboard.php');
    }else{
      ?>
<script>
  alert('Invalid user email or password!');
</script>
      <?php
    }
}
include_once('./includes/header.php');
?>

<body class="h-100">
<div class="authincation h-100">
<div class="container h-100">
<div class="row justify-content-center h-100 align-items-center">
<div class="col-md-6">
<div class="authincation-content">
<div class="row no-gutters">
<div class="col-xl-12">
<div class="auth-form">
<h4 class="text-center mb-4">Sign In</h4>
<form method="post">
<div class="form-group">
<label class="mb-1"><strong>MOBILE</strong></label>
<input type="number" id="u_phone" name="u_phone" class="form-control" placeholder="0000-0000000">
</div>
<div class="form-group">
<label class="mb-1"><strong>PASSWORD</strong></label>
<input type="password" id="u_pass" name="u_pass" class="form-control" placeholder="Password">
</div>
<div class="form-row d-flex justify-content-between mt-4 mb-2">

</div>
<div class="text-center">
<button type="submit" id="submit" name="submit" class="btn btn-primary btn-block">Sign In</button>
</div>
</form>
<div class="new-account mt-3">
<!---<p>Don't have an account? <a class="text-primary" href="register.php">Sign up</a></p>-->
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<?php
include_once('./includes/footer.php');
?>