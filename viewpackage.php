<?php
include_once('./includes/header.php');
include_once('./includes/sidebar.php');
?>
	<div class="content-body">
		<div class="container-fluid">
			<div class="page-titles">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="javascript:void(0)">Widget</a></li>
					<li class="breadcrumb-item active"><a href="javascript:void(0)">Statistics</a></li>
				</ol>
			</div>
			<div class="row">
			<?php 
			$role = $_SESSION['role'];
                            $query ="SELECT * FROM packages";
                            $exe =mysqli_query($connection,$query);
                            while($fetch = mysqli_fetch_Array($exe)){ 
                             ?>
				<div class="col-xl-4 col-lg-12">
					<div class="card">
						<div class="card-header border-0 pb-0">
							<h4 class="card-title"><?php echo $fetch["package_name"];?></h4> </div>
						<div class="card-body">
							<div id="DZ_W_TimeLine" class="widget-timeline">
								<ul class="timeline">
									<li>
										<div class="timeline-badge primary"></div>
										<a class="timeline-panel text-muted" href="#">
											 <!-- <span>10 minutes ago</span> -->
											<h6 class="mb-0">Package Name <br /><strong class="text-primary"><?php echo strtoupper($fetch["package_name"]);?></strong>.</h6> </a>
									</li>
									<li>
										<div class="timeline-badge info"> </div>
										<a class="timeline-panel text-muted" href="#"> <span>20 minutes ago</span>
											<h6 class="mb-0">Package Price <br /><strong class="text-info"><?php echo $fetch["package_price"];?>PKR.</strong></h6>
											<p class="mb-0">You can Watch more interesting Videos by buying this package...</p>
										</a>
									</li>
									<li>
										<div class="timeline-badge danger"> </div>
										<a class="timeline-panel text-muted" href="#"> <span>30 minutes ago</span>
										<?php
										if($fetch["package_name"]=="basic"){
										?>
											<h6 class="mb-0">In <?php echo $fetch["package_name"];?> package you can watch 6 videos</h6>
											<?php
							               }elseif($fetch["package_name"]=="standard"){
											?>
											<h6 class="mb-0">In <?php echo $fetch["package_name"];?> package you can watch 10 videos</h6>
											<?php
										   }else{
											?>
													<h6 class="mb-0">In <?php echo $fetch["package_name"];?> package you can watch 15 videos</h6>
											<?php
										   }
							             ?>
										 </a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
	<?php 
							}
							?>
				<div class="row">
				<div class="col-xl-12 col-lg-12 col-sm-12" style="margin-left:35%;" >
					<div class="card overflow-hidden">
						<div class="text-center p-3 overlay-box " style="background-image:url(assets/images/big/img1.jpg)">
							<div class="profile-photo"> <img src="assets/images/profile/profile.png" width="100" class="img-fluid rounded-circle" alt=""> </div>
							<h3 class="mt-3 mb-1 text-white">ADMIN</h3>
							<p class="text-white mb-0">Admin Account Info</p>
						</div>
						<ul class="list-group list-group-flush">
							<li class="list-group-item d-flex justify-content-between"><span class="mb-0">Bank Name </span> <strong class="text-muted">UBL	</strong></li>
							<li class="list-group-item d-flex justify-content-between"><span class="mb-0">Account #</span> <strong class="text-muted">980769345098	</strong></li>
							<form  method="post" enctype='multipart/form-data'>
							<li class="list-group-item d-flex justify-content-between"><span class="mb-0">Transition Image</span><div class="input-group">
                              <div class="custom-file">
                              <input type="file" name="transition_pic" class="form-control form-control-sm">
                            </div>
                           </div></li>
						</ul>
						<div class=" border-0 mt-0">
							<input type="submit" name="submit" class="btn btn-primary btn-lg btn-block" value="Upload " /> 
						</div>
						</form>
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
    
   $transition_pic = $_FILES['transition_pic']['name'];
   $user_phone = $phone;
if($transition_pic == "")
{
	?>
<script>
	alert(' select image please ');
	</script>
	<?php
}else{
$query1="INSERT INTO transition_img(transition_pic, user_phone) VALUES ('$transition_pic','$user_phone')";
  $exe1 = mysqli_query($connection,$query1);
  move_uploaded_file($_FILES['transition_pic']['tmp_name'],'./assets/img/'.$transition_pic);
  if ($exe1) {
	?>
<script>
	alert('image added');
	</script>
	<?php
   
  }else{
	?>
	<script>
		alert('image not added');
		</script>
		<?php
  }
}
}
?>