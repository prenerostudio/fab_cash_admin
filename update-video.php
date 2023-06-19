<?php
include_once('./includes/header.php');
include_once('./includes/sidebar.php');
$id = $_GET['update'];
$query ="SELECT * FROM videos WHERE video_id='$id'";
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
								<h4 class="card-title">Update Your Videos</h4> </div>
							<div class="card-body">
								<div class="basic-form ">
									<form id="videoform" method="post">
										<div class="form-group">
										<label class="mb-1"><strong>Video Title</strong></label>
                                         <input type="text" name="videos_title" class="form-control" value="<?php echo $fetch["videos_title"];?>">
										</div>
										<div class="form-group">
										<label>Video</label>
                                        
											<input type="text" id="searchinput" class="form-control input-rounded" name="videos_url" value="<?php echo $fetch["videos_url"];?>"> 
											<button type="button" class="btn btn-primary btn-sm mt-1" onclick="goToYoutube()">upload Video URL</button>
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
    
   $videos_title = $_POST['videos_title'];
   $videos_url = $_POST['videos_url'];

   $slct = "SELECT * FROM videos WHERE videos_url = '$videos_url' && videos_title = '$videos_title'";
    $run = mysqli_query($connection,$slct);
    if(mysqli_num_rows($run)>0){
		?>
		<script>
			alert("Video already exist");
			setTimeout(function(){location.href="viewvideo.php"} , 0000);
		</script>
		<?php 
}else{
$query1="UPDATE videos SET videos_title = '$videos_title', videos_url = '$videos_url' WHERE video_id='$id'";
  $exe1 = mysqli_query($connection,$query1);
  if ($exe1) {
	?>
	<script>
		alert("Video Updated");
        setTimeout(function(){location.href="viewvideo.php"} , 0000);
	</script>
	<?php 
  }else{
	?>
	<script>
		alert("Video not Updated");
	</script>
	<?php 
  }
}
}
?>
	<script>
        function goToYoutube(){
            location.href = "http://www.youtube.com/" ;
        }
    </script>
	<script>

</script>