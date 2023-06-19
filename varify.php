<?php 
     include_once('db_connection.php');
     $verify =  $_SESSION['code'] ;
    if (isset($_POST['submit'])) {
    
   $u_verify = $_POST['u_verify'];
  if($u_verify== $verify){
    header('location:index.php');
  }
}
?>
<!DOCTYPE html>
<html lang="en" class="h-100">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Karciz | Page Login</title>
<meta name="description" content="Some description for the page"/>
<link rel="icon" type="image/png" sizes="16x16" href="./assests/images/favicon.png">
<link href="./assests/css/style.css" rel="stylesheet">
</head>
<body class="h-100">
<div class="authincation h-100">
<div class="container h-100">
<div class="row justify-content-center h-100 align-items-center">
<div class="col-md-6">
<div class="authincation-content">
<div class="row no-gutters">
<div class="col-xl-12">
<div class="auth-form">
<h4 class="text-center mb-4">Varify Your Email</h4>
<form method="post">
<div class="form-group">
<label class="mb-1"><strong>Enter Code</strong></label>
<input type="number" id="u_verify" name="u_verify" class="form-control" placeholder="hello@example.com">
</div>
<div class="form-row d-flex justify-content-between mt-4 mb-2">
<div class="text-center">
<button type="submit" id="submit" name="submit" class="btn btn-primary btn-block">Sign Me In</button>
</div>
</form>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<script src="./assests/vendor/global/global.min.js" type="text/javascript"></script>
<script src="./assests/vendor/bootstrap-select/dist/js/bootstrap-select.min.js" type="text/javascript"></script>
<script src="./assests/js/custom.min.js" type="text/javascript"></script>
<script src="./assests/js/deznav-init.js" type="text/javascript"></script>
<script id="DZScript" src="../../../dzassets.s3.amazonaws.com/w3-global8bb6.js?btn_dir=right"></script>
</body>

</html>