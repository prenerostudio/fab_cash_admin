<?php
include_once('./includes/header.php');
include_once('./includes/sidebar.php');
     
$id = $_GET['update'];
$query ="SELECT * FROM `user_topup` WHERE `topup_id`='$id'";
$exe =mysqli_query($connection,$query); 
$fetch = mysqli_fetch_Array($exe);     
?>
		
<div class="content-body">			
	<div class="container-fluid">				
		<div class="page-titles">					
			<ol class="breadcrumb">						
				<li class="breadcrumb-item"><a href="dashboard.php">Dashboard</a></li>						
				<li class="breadcrumb-item active"><a href="javascript:void(0)">Update Topup</a></li>					
			</ol>				
		</div>
				
		<div class="row">					
			<div class="col-xl-12 col-lg-12">					
				<div class="card">							
					<div class="card-header">								
						<h4 class="card-title">Update Topup Status</h4> 
					</div>							
					<div class="card-body">								
						<div class="basic-form ">									
							<form id="userform" method="post">									
								<div class="form-group">										
									<label class="mb-1"><strong>User ID</strong></label>
									<input type="text" name="u_id" class="form-control" value="<?php echo $fetch['u_id'];?>" disabled>										
								</div>										
								<div class="form-group">										
									<label class="mb-1"><strong>Bank Type</strong></label>
									<input type="text" name="banktype" class="form-control" value="<?php echo $fetch['banktype'];?>" disabled>									
								</div>
								<div class="form-group">										
									<label class="mb-1"><strong>Account Number</strong></label>
									<input type="text" name="a_num" class="form-control" value="<?php echo $fetch['account_number'];?>" disabled>									
								</div>
								<div class="form-group">										
									<label class="mb-1"><strong>Account Number</strong></label>
									<input type="text" name="amount" class="form-control" value="<?php echo $fetch['amount'];?>" disabled>									
								</div>
								<div class="form-group">										
									<label class="mb-1"><strong>Transaction ID</strong></label>
									<input type="text" name="trans_id" class="form-control" value="<?php echo $fetch['trans_id'];?>" disabled>									
								</div>
								<div class="form-group">										
									<label>Status</label>                                        
									<select class="form-control" name="status" id="status">
										<option value="<?php echo $fetch['status'];?>">
											<?php echo $fetch['status'];?>
										</option>                                            
										<option value="Recieved">Recieved </option> 
										<option value="Cancelled">Cancelled </option> 
										
									</select>										
								</div>										
								<button type="submit" name="submit" id="submit" class="btn btn-primary btn-block ">
									Update
								</button>									
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
    
if (isset($_POST['submit'])) {  

	$status = $_POST['status'];
	$date = date('Y-m-d');


	$query1 = "UPDATE `user_topup` SET  `status`='$status',
										`date_added`='$date' WHERE `topup_id`='$id'";  
	$exe1 = mysqli_query($connection,$query1);
	if ($exe1) {
		
?>
<script> 
	alert('Status Updated');      
	setTimeout(function(){location.href="user_top_up.php"} , 2000);  
</script>    
<?php
		}
	}else{ 
?>    
<script>   
	alert('Status  not Updated');       
</script>   
<?php 
	
}
?>