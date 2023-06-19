<?php
include_once('./includes/header.php');
include_once('./includes/sidebar.php');
?>
	<div class="content-body">
		<div class="container-fluid">
			<div class="page-titles">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="javascript:void(0)">Table</a></li>
					<li class="breadcrumb-item active"><a href="javascript:void(0)">Wallet</a></li>
				</ol>
			</div>
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-header">
							<h4 class="card-title">User Wallet</h4> </div>
						<div class="card-body">
							<div class="table-responsive">
								<table id="example5" class="display min-w850">
									<thead>
										<tr>
											<th>Phone</th>
											<th>Username</th>
											<th>Wallet Amount</th>
										</tr>
									</thead>
									<tbody>
                                    <?php 
                                            $query ="SELECT SUM(user_wallet.wallet_amount) as balance, user_wallet.phone FROM user_wallet GROUP BY user_wallet.phone";
                                        $exe =mysqli_query($connection,$query);
                                        while($fetch = mysqli_fetch_Array($exe)) { 

                                          ?>
										<tr>
										<td><?php echo $fetch["phone"];?></td>
										<td><?php
											
											$user_phone = $fetch["phone"];
											$uquery ="SELECT user_register.* FROM user_register WHERE user_register.u_phone ='$user_phone'";
                                        $uexe =mysqli_query($connection,$uquery);
											$user_fetch = mysqli_fetch_array($uexe);
											echo $user_fetch['u_fname'];
											?></td>	
                                        <td>BHD.<?php echo $fetch["balance"];?></td>
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
	