
<?php
include_once('./includes/header.php');
include_once('./includes/sidebar.php');
     $id = $_GET['update'];
 $query ="SELECT * FROM packages WHERE package_id ='$id'";
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
								<h4 class="card-title">Update Packages</h4> </div>
							<div class="card-body">
								<div class="basic-form ">
									<form id="videoform" method="post">
										<div class="form-group">
										<label class="mb-1"><strong>Package Title</strong></label>
                                         <input type="text" name="package_name" class="form-control" value="<?php echo $fetch['package_name'];?>">
										</div>
										<div class="form-group">
                                        <label class="mb-1"><strong>Package Price</strong></label>
											<input type="text" class="form-control input-rounded" name="package_price"  value="<?php echo $fetch['package_price'];?>"> 
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
    
   $package_name = $_POST['package_name'];
   $package_price = $_POST['package_price'];

   
   $slct = "SELECT * FROM packages WHERE package_name = '$package_name' && package_price = '$package_price'";
    $run = mysqli_query($connection,$slct);
    if(mysqli_num_rows($run)>0){
		?>
		<script>
			alert("Package already exist");
			setTimeout(function(){location.href="view-package.php"}, 0000);
		</script>
		<?php 
}else{
$query1="UPDATE packages SET package_name = '$package_name', package_price = '$package_price' WHERE package_id ='$id'";
  $exe1 = mysqli_query($connection,$query1);
  if ($exe1) {
	?>
	<script>
		alert("Package Updated");
        setTimeout(function(){location.href="view-package.php"}, 0000);
	</script>
	<?php 
  }else{
	?>
	<script>
		alert("Package not Updated");
	</script>
	<?php 
  }
}
}
?>