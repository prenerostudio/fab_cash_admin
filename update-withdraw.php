<?php
include_once('./includes/header.php');
include_once('./includes/sidebar.php');
$id = $_GET['update'];
$query ="SELECT * FROM `user_withdraw` WHERE u_id='$id'";                                        
									$exe =mysqli_query($connection,$query);                                         
									$fetch = mysqli_fetch_Array($exe);
?>
		<div class="content-body">
			<div class="container-fluid">
				<div class="page-titles">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="javascript:void(0)">Form</a></li>
						<li class="breadcrumb-item active"><a href="javascript:void(0)">Element</a></li>
					</ol>
				</div>
				<div class="row">
					<div class="col-xl-12 col-lg-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title">Update Withdraw Status</h4> </div>
							<div class="card-body">
								<div class="basic-form ">
									<form id="videoform" method="post">
										
										<div class="form-group">
										<label class="mb-1"><strong>User ID</strong></label>
                                         <input type="text" name="u_id" class="form-control" value="<?php echo $fetch["u_id"];?>" disabled>
										</div>
										<div class="form-group">
										<label class="mb-1"><strong>Amount</strong></label>
                                         <input type="text" name="amount" class="form-control" value="<?php echo $fetch["amount"];?>" disabled>
										</div>
										<div class="form-group">
										<label class="mb-1"><strong>Bank Type</strong></label>
                                         <input type="text" name="banktype" class="form-control" value="<?php echo $fetch["banktype"];?>" disabled>
										</div>
										<div class="form-group">
										<label class="mb-1"><strong>Account Number</strong></label>
                                         <input type="text" name="account" class="form-control" value="<?php echo $fetch["account_number"];?>" disabled>
										</div>
										
										
										<div class="form-group">
										<label>Withdraw Satus</label>
                                        <select class="form-control input-rounded" name="status">
											<option> <?php echo $fetch["status"];?> </option>
											
											<option> Completed </option>
											<option> Rejected </option>
											
											</select>
											
										</div>
										<button type="submit" name="submit" id="submit" class="btn btn-primary btn-block ">Update</button>
									</form>
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
	<?php 
    if (isset($_POST['submit'])) {
    
   //$u_id = $_POST['u_id'];
   
		$status = $_POST['status'];

 
$query1="UPDATE `user_withdraw` SET  `status`='$status' WHERE `u_id`='$id'";
  $exe1 = mysqli_query($connection,$query1);
  if ($exe1) {
	?>
	<script>
		alert("Withdraw Status Updated");
        setTimeout(function(){location.href="user_withdraw.php"} , 0000);
	</script>
	<?php 
  }else{
	?>
	<script>
		alert("Withdraw Status not Updated");
	</script>
	<?php 
  }

}
?>
	