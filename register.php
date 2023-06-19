<?php
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
<h4 class="text-center mb-3">Sign up your account</h4>
<form id="usersform">
  <div class="row">
<div class="form-group col-12">
<label class="mb-1"><strong>Name</strong></label>
<input type="text" name="u_fname" class="form-control " placeholder="name">
</div>
<div class="form-group col-12">
<label class="mb-1"><strong>Mobile</strong></label>
<input type="number" name="u_phone" class="form-control" placeholder="0000-0000000">
</div>
<div class="form-group col-12">
    <label class="mb-1"><strong>Date of Birth</strong></label>
    <input type="date" name="u_dob" class="form-control" >
    </div>
<div class="form-group col-6">
<label class="mb-1"><strong>Password</strong></label>
<input type="password" name="u_pass" class="form-control" placeholder="Password">
</div>
<div class="form-group col-6">
    <label class="mb-1"><strong>Confirm Password</strong></label>
    <input type="password" name="u_cpass" class="form-control" placeholder="Password">
</div>
</div>
<div class="text-center mt-3">
<button type="submit" id="submit" class="btn btn-primary btn-block">Sign me up</button>
</div>
</form>
<div class="new-account mt-1">
<p>Already have an account? <a class="text-primary" href="index.php">Sign in</a></p>
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
<script>
$(document).ready(function(){
    $("#submit").on("click",function(stop){
        stop.preventDefault();
        var usersdata = new FormData(usersform);
        $("#submit").prop("disabled", true);
        // alert(usersdata);
        $.ajax({
            url:"phpfiles/user_register.php",
            method:"POST",
            data:usersdata,
            contentType:false,
            processData:false,
            success:function(response){
            alert(response);
            if(response=='User Registered Successfully'){
                 setTimeout(function(){location.href="index.php"} , 0000);
                }
            }
        });
    });
});


</script>
