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
							<form id="videoform" method="post">	
								<div class="form-group">										
									<label class="mb-1">
										<strong>Bank Name</strong>
									</label>                                         									
									<input type="text" name="bank_name" class="form-control" placeholder="title">
								</div>
								<div class="form-group">										
									<label class="mb-1">
										<strong>Account Title</strong>
									</label>                                         									
									<input type="text" name="ac_title" class="form-control" placeholder="title">
								</div>										
								<div class="form-group">										
									<label>Acount Number</label>
									<input type="text" class="form-control input-rounded" name="ac_num" placeholder="Enter Acount Number"> 											
																		
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
	$ac_title = $_POST['ac_title'];   
	$bank_name = $_POST['bank_name'];   
	$ac_num = $_POST['ac_num'];
	$date = date("Y-m-d");
	
	$slct = "INSERT INTO `bank_details`( `bank_name`, 
										`acount_title`, 
										`acount_number`, 
										`date_added`
										) VALUES (
										'$bank_name',
										'$ac_title',
										'$ac_num',
										'$date')";    
	
		$exe1 = mysqli_query($connection,$slct);  
		if ($exe1) {	
?>	
<script>		
	alert("Bank Account Added");	
</script>	
<?php   
		}else{	
?>	
<script>		
	alert("Bank Account not Added");	
</script>	
<?php  
		}
	}

?>	
