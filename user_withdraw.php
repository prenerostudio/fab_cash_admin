<?php
include_once('./includes/header.php');
include_once('./includes/sidebar.php');
?>	
<div class="content-body">		
	<div class="container-fluid">			
		<div class="page-titles">				
			<ol class="breadcrumb">					
				<li class="breadcrumb-item"><a href="dashboard.php">Dashboard</a></li>					
				<li class="breadcrumb-item active"><a href="javascript:void(0)">User Withdraws</a></li>				
			</ol>			
		</div>			
		<div class="row">				
			<div class="col-12">					
				<div class="card">						
					<div class="card-header">							
						<h4 class="card-title">User Withdraws</h4> </div>						
					<div class="card-body">							
						<div class="table-responsive">								
							<table id="example5" class="display min-w850">									
								<thead>										
									<tr>											
										<th>User ID</th>											
										<th>Username</th>											
										<th>Amount</th>
										<th>Bank Type</th>											
										<th>Acount #</th>											
										<th>Status</th>
										<th>Action</th>
									</tr>									
								</thead>									
								<tbody>                                    
									<?php  
									$query ="SELECT * FROM `user_withdraw`";                                        
									$exe =mysqli_query($connection,$query);                                         
									while($fetch = mysqli_fetch_Array($exe)){                                           
									?>										
									<tr>										
										<td><?php echo $fetch["u_id"];?></td>											
										<td><?php 
										$user_id = $fetch["u_id"];
										$uquery ="SELECT * FROM `user_register` WHERE `user_id`='$user_id'";                                        
									$uexe =mysqli_query($connection,$uquery);                                         
									$ufetch = mysqli_fetch_Array($uexe);
										
											echo $ufetch['u_fname'];
											
											
											
											?></td>	
										<td><?php echo $fetch["amount"];?></td>											
										<td><?php echo $fetch["banktype"];?></td>	
										<td><?php echo $fetch["account_number"];?></td>											
										<td><?php echo $fetch["status"];?></td>	
										
										<td>												
											<div class="dropdown ml-auto text-right">		
												<div class="btn-link" data-toggle="dropdown">					
													<svg width="24px" height="24px" viewBox="0 0 24 24" version="1.1">		
														<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
															<rect x="0" y="0" width="24" height="24"></rect>
															<circle fill="#000000" cx="5" cy="12" r="2"></circle>
															<circle fill="#000000" cx="12" cy="12" r="2"></circle>
															<circle fill="#000000" cx="19" cy="12" r="2"></circle>
														</g>
													</svg>												
												</div>													
												<div class="dropdown-menu dropdown-menu-right">
													<a class="dropdown-item" href='update-withdraw.php?update=<?php echo $fetch["u_id"];?>' class='btn btn-success'>
														<i class='fa fa-edit'></i> Edit
													</a>
													<!--<a class="dropdown-item dlt" data-delete='<?php //echo $fetch["u_id"];?>' class='btn btn-success'>
														<i class='fa fa-trash'></i> Delete
													</a> -->                                               
												</div>												
											</div>											
										</td>										
									</tr>										
									<?php                                         
									}                                         
									?>									
								</tbody>								
							</table>							
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
	$(document).on("click",".dlt",function(){              
		var formid = $(this).data("delete");             
		var thisid = this;              
		$.ajax({                   
			url:"phpfiles/videocode.php",                    
			method:"POST",                   
			data: {u_id : formid},                    
			success:function(response){                            
				alert(response);					
				$(thisid).closest("tr").fadeOut();                    
			}          
		});           
	});    
</script>
	