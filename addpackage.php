
<?php
include_once('./includes/header.php');
include_once('./includes/sidebar.php');
?>
		<div class="content-body">
			<div class="container-fluid">
				<div class="page-titles">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="javascript:void(0)">Dashboard</a></li>
						<li class="breadcrumb-item active"><a href="javascript:void(0)">Add New</a></li>
					</ol>
				</div>
				<div class="row">
					<div class="col-xl-12 col-lg-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title">Add Packages</h4> </div>
							<div class="card-body">
								<div class="basic-form ">
									<form id="videoform" method="post">
										<div class="form-group">
										<label class="mb-1"><strong>Package Title</strong></label>
                                         <input type="text" name="package_name" class="form-control" placeholder="Title">
										</div>
										<div class="form-group">
                                        <label class="mb-1"><strong>Package Details</strong></label>
											<textarea class="form-control input-rounded" name="package_details" value="" placeholder="Enter Package Details"></textarea>
											
										</div>
										<div class="form-group">
                                        <label class="mb-1"><strong>Package Durations</strong></label>
											<input type="text" class="form-control input-rounded" name="package_dur" value="" placeholder="Enter Package Duration"> 
										</div>
										<div class="form-group">
                                        <label class="mb-1"><strong>Package Price</strong></label>
											<input type="text" class="form-control input-rounded" name="package_price" value="" placeholder="Enter Package Price"> 
										</div>
										<button type="submit" name="submit" id="submit" class="btn btn-primary btn-block ">Insert</button>
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
    
   $package_name = $_POST['package_name'];
		$package_details = $_POST['package_details'];
		$package_dur = $_POST['package_dur'];
		
   $package_price = $_POST['package_price'];

$query1="INSERT INTO `packages`(`package_name`, `package_details`, `package_duration`, `package_price`) VALUES ('$package_name','$package_details','$package_dur','$package_price')";
  $exe1 = mysqli_query($connection,$query1);
  if ($exe1) {
	?>
	<script>
		alert("Package added");
	</script>
	<?php  
  }else{
	?>
	<script>
		alert("Package not added");
	</script>
	<?php 
  }
}
?>