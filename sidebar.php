<?php
include_once('db_connection.php');
if ( $_SESSION['u_phone'] == "") {
	header('location:index.php'); 
}	
$phone = $_SESSION['u_phone'];	
$role = $_SESSION['role'];	
$select ="SELECT * FROM user_register WHERE u_phone ='$phone'";	   
$qryrun = mysqli_query($connection,$select);	   
$value3 = mysqli_fetch_Array($qryrun);  	  
?>
<body>		
	<div id="main-wrapper">	
		<div class="nav-header">			
			<a href="dashboard.php" class="brand-logo"> 				
				<img class="logo-abbr" src="assets/images/logo.png" alt=""> 				
				<img class="logo-compact" src="assets/images/logo-text.png" alt=""> 				
				<img class="brand-title" src="assets/images/logo-white.png" alt=""> 			
			</a>			
			<div class="nav-control">				
				<div class="hamburger"> 
					<span class="line"></span>
					<span class="line"></span>
					<span class="line"></span> 
				</div>			
			</div>		
		</div>
				
		<div class="header">			
			<div class="header-content">				
				<nav class="navbar navbar-expand">					
					<div class="collapse navbar-collapse justify-content-between">						
						<div class="header-left">							
							<div class="dashboard_bar">Videos</div>						
						</div>
						
						<ul class="navbar-nav header-right">							
							<li class="nav-item">								
								<div class="input-group search-area ml-auto d-inline-flex">									
									<input type="text" class="form-control" placeholder="Search here">		
									<div class="input-group-append">										
										<button type="button" class="input-group-text">
											<i class="flaticon-381-search-2"></i>
										</button>									
									</div>								
								</div>							
							</li>
							
							<li class="nav-item">								
								<a class="btn btn-primary  d-md-block d-none" href="#"> 
									<i class="fa fa-cog scale5" aria-hidden="true"></i> 
								</a>							
							</li>
							
							<li class="nav-item dropdown header-profile">								
								<a class="nav-link" href="javascript:;" role="button" data-toggle="dropdown"> 
									<img src="assets/images/profile/avtar.png" width="20" alt="" />	
									<div class="header-info"> 
										<span>Administrator 
											<i class="fa fa-caret-down ml-3" aria-hidden="true"></i>
										</span> 
									</div>								
								</a> 								
								<?php								
								$amount=0;								
								$query ="SELECT * FROM `user_wallet` WHERE phone='$phone'";
								$exe =mysqli_query($connection,$query);										
								while($fetch = mysqli_fetch_Array($exe)){											
									$amount = $amount  + $fetch["wallet_amount"];										
								}										
								?>
								<div class="dropdown-menu dropdown-menu-right">
									<?php
									if($role!= 'admin'){
									?>								
									<a class="dropdown-item ai-icon">								
										<i class="fa fa-coins text-warning"></i> 
										<span class="ml-2">BDT.<?php echo $amount ?> </span> 
									</a>										
									<?php										
									}
									?>									
									<a href="logout.php" class="dropdown-item ai-icon">										
										<svg id="icon-logout" xmlns="http://www.w3.org/2000/svg" class="text-danger" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">											
											<path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>				
											<polyline points="16 17 21 12 16 7"></polyline>	
											<line x1="21" y1="12" x2="9" y2="12"></line>										
										</svg> 
										<span class="ml-2">Logout </span> 
									</a>								
								</div>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
		

		<div class="deznav">	
			<div class="deznav-scroll">		
				<ul class="metismenu" id="menu">			
					<li>				
						<a class="has-arrow ai-icon" href="dashboard.php" aria-expanded="false"> 
							<i class="flaticon-381-networking"></i> 
							<span class="nav-text">Dashboard</span> 
						</a>			
					</li>			
					<?php                   
					if ($value3['u_status']=="admin") {                 
					?>			
					<li>				
						<a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false"> 
							<i class="flaticon-381-television"></i> 
							<span class="nav-text">Videos</span> 
						</a>				
						<ul aria-expanded="false">				    	
							<li>
								<a href="viewvideo.php">All Videos</a>
							</li>					
							<li>
								<a href="addvideos.php">Add Videos</a>
							</li>																		
						</ul>			
					</li>			
					<li>				
						<a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false"> 
							<i class="flaticon-381-television"></i> 
							<span class="nav-text">Packages</span> 
						</a>				
						<ul aria-expanded="false">				    							
							<li>
								<a href="view-package.php">All Package</a>
							</li>                    
							<li>
								<a href="addpackage.php">Add Packages</a>
							</li>												
						</ul>			
					</li>			
					<li>				
						<a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false"> 
							<i class="flaticon-381-network"></i> 
							<span class="nav-text">User</span> 
						</a>				
						<ul aria-expanded="false">				    
							<li>
								<a href="userinfo.php">View User</a>
							</li>									
						</ul>			
					</li>			
					<li>				
						<a href="user_top_up.php" aria-expanded="false">
							<i class="fa-solid fa-wallet"></i> 
							<span class="nav-text"> User Top-ups</span> 
						</a>			
					</li>
				
					
					
					
					
					<li>				
						<a href="add-bank.php" aria-expanded="false">
							<i class="fa-solid fa-wallet"></i> 
							<span class="nav-text"> Add Bank Account</span> 
						</a>			
					</li>
					<li>				
						<a href="wallet.php" aria-expanded="false">
							<i class="fa-solid fa-wallet"></i> 
							<span class="nav-text"> Wallet</span> 
						</a>			
					</li>	
					
					<li>				
						<a href="user_withdraw.php" aria-expanded="false">
							<i class="fa-solid fa-wallet"></i> 
							<span class="nav-text">User Withdraws</span> 
						</a>			
					</li>	

					<li>				
						<a href="user_withdraw.php" aria-expanded="false">
							<i class="fa-solid fa-wallet"></i> 
							<span class="nav-text">User Withdraws</span> 
						</a>			
					</li>
					
					<?php 
					} 			
					if ($value3['u_status']!="admin") {		   
					?>            
					<li>				
						<a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false"> 
							<i class="flaticon-381-television"></i> 
							<span class="nav-text">Packages</span> 
						</a>				
						<ul aria-expanded="false">                    
							<li>
								<a href="viewpackage.php">Package for Users</a>
							</li>				
						</ul>			
					</li>			
					<?php 			
					}                  
					if ($value3['u_status']!="admin") {                 
					?>								
					<li>				
						<a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false"> 
							<i class="flaticon-381-television"></i> 
							<span class="nav-text">Videos</span> 
						</a>				
						<ul aria-expanded="false">                    
							<li>
								<a href="view-video.php">Videos for Users</a>
							</li>				
						</ul>			
					</li>			
					<?php 				  
					}				  
					?>		
				</ul>			
			</div>
		</div>