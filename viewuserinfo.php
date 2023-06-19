<?php
include_once('./includes/header.php');
include_once('./includes/sidebar.php');
?>
	<div class="content-body">
		<div class="container-fluid">
			<div class="page-titles">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="javascript:void(0)">Table</a></li>
					<li class="breadcrumb-item active"><a href="javascript:void(0)">Datatable</a></li>
				</ol>
			</div>
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-header">
							<h4 class="card-title">Users</h4> </div>
						<div class="card-body">
							<div class="table-responsive">
								<table id="example5" class="display min-w850">
									<thead>
										<tr>
											<th>Name</th>
											<th>Phone</th>
											<th>Status</th>
											<th>Transition Image</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody>
                                    <?php 
                                        $query ="SELECT * FROM user_register ur INNER JOIN transition_img t ON ur.u_phone=t.user_phone";
                                        $exe =mysqli_query($connection,$query);
                                         while($fetch = mysqli_fetch_Array($exe)){ 
                                          ?>
										<tr>
											<td><?php echo $fetch["u_fname"];?></td>
											<td><?php echo $fetch["u_phone"];?></td>
											<td> 
                                            <span class="badge light badge-info">
                                             <i class="fa fa-circle text-info mr-1"></i>
                                             requested
                                            </span> 
                                        </td>
                                        <td><img src="<?php echo './assets/img/'.$fetch["transition_pic"];?>"  height="100" width="100"/></td>
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
													<div class="dropdown-menu dropdown-menu-right"><a class="dropdown-item" href='update-role.php?update=<?php echo $fetch["user_id"];?>' class='btn btn-success'><i class='fa fa-edit'></i> Accept</a><a class="dropdown-item dlt" data-delete='<?php echo $fetch["user_id"];?>' class='btn btn-success'><i class='fa fa-trash'></i> Reject</a>
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
                    url:"phpfiles/usercode.php",
                    method:"POST",
                    data: {id1 : formid},
                    success:function(response){
                            alert(response);
					$(thisid).closest("tr").fadeOut();
                    }
          });
            });
    </script>