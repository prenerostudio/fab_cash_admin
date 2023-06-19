<?php
include_once('./includes/header.php');
include_once('./includes/sidebar.php');
?>
		
<div class="content-body">			
	<div class="container-fluid">				
		<div class="page-titles">					
			<ol class="breadcrumb">						
				<li class="breadcrumb-item"><a href="dashboard.php">Dashboard</a></li>						
				<li class="breadcrumb-item active"><a href="javascript:void(0)">Add Bank</a></li>					
			</ol>				
		</div>
				
		<div class="row">					
			<div class="col-xl-12 col-lg-12">						
				<div class="card">							
					<div class="card-header">								
						<h4 class="card-title">Add Your Bank Account</h4> 
					</div>							
					<div class="card-body">								
						<div class="basic-form ">									
							<form id="walletform" method="post">
								
								<div class="form-group">										
									<label class="mb-1">
										<strong>Choose User Details</strong>
									</label> 
									<select class="form-control" name="uphone">
										<option selected disabled> Select User </option>
										<?php 
                                            $query ="SELECT user_register.* FROM user_register";
                                        $exe =mysqli_query($connection,$query);
                                        while($fetch = mysqli_fetch_Array($exe)) { 

                                          ?>
										<option value="<?php echo $fetch["u_phone"];?>"> <?php echo $fetch["u_phone"];?> | <?php echo $fetch["u_fname"];?>  </option>
									
									<?php
										}
											?>
									
									
									</select>
									
								</div>
																		
								<div class="form-group">										
									<label>Enter Amount</label>
									<input type="number" class="form-control" name="amount" placeholder="Enter Amount"> 											
																		
								</div>										
								<button type="submit" name="submit" id="submit" class="btn btn-primary btn-block ">
									Insert
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
?>
	
<?php    
if (isset($_POST['submit'])) {  
	
	$u_phone = $_POST['uphone'];
	$amount = $_POST['amount'];   
	$date = date("Y-m-d");
	
	$insert = "INSERT INTO `user_wallet`(
										`phone`, 
										`wallet_amount`
										) VALUES (
										'$u_phone',
										'$amount')";    
	
		$exe1 = mysqli_query($connection,$insert);  
		if ($exe1) {	
?>	
<script>		
	alert("Amount added in customer Account.....");	
</script>	
<?php   
		}else{	
?>	
<script>		
	alert("Amount not added in customer Account..... Try Again.");	
</script>	
<?php  
		}
	}

?>	
