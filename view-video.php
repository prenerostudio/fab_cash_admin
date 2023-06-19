<?php
include_once('./includes/header.php');
include_once('./includes/sidebar.php');
?>
	<div class="content-body">
		<div class="container-fluid">
			<div class="page-titles">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="javascript:void(0)">All Videos</a></li>
				</ol>
			</div>
			<div class="row">
				<div class="col-12">

					<div class="row">
                    <?php 
				 $phone1 = $_SESSION['u_phone'];
				 $queryslct1 ="SELECT * FROM user_register WHERE u_phone ='$phone1'";
				 $exeslct1 =mysqli_query($connection,$queryslct1);
				 $fetchslct1 = mysqli_fetch_Array($exeslct1);

				    if($fetchslct1['u_status'] == "new"){
					$query ="SELECT * FROM videos LIMIT 2";
				    }elseif($fetchslct1['u_status'] == "basic"){
					$query ="SELECT * FROM videos LIMIT 4";
				    }elseif($fetchslct1['u_status'] == "standard"){
					$query ="SELECT * FROM videos LIMIT 6";
				    }else{
					$query ="SELECT * FROM `videos` LIMIT 8";
				    }
					$exe =mysqli_query($connection,$query);
                    while($fetch = mysqli_fetch_Array($exe)){
						 $video = $fetch['video_id'];
	
						$query2 ="SELECT * FROM `watch_videos` WHERE `video_id`='$video' && `user_phone`= '$phone1'";
					   	$exe2 =mysqli_query($connection,$query2);
                      $fetch1 = mysqli_fetch_Array($exe2);
					  
								$url = $fetch["videos_url"];
								$c_url = str_replace("watch?v=","embed/",$url);
	                             ?>
						<div class="col-xl-6 col-lg-6">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title"><?php echo $fetch["videos_title"];?></h4></div>
									<form id="disablediv">
								   <div class="card-body">
									<?php
								   if($fetch1){
									?>
						              <div class="embed-responsive embed-responsive-16by9">
								       <iframe id="iframe" class="embed-responsive-item" src="<?php echo $fetch["videos_url"];?>"></iframe>
					                  </div>
						            <?php
					                  }else{
					                 ?>
								     <div class="embed-responsive embed-responsive-16by9">
								       <iframe id="iframe" class="embed-responsive-item" src="<?php echo $c_url;?>"allow="accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture"  allowfullscreen></iframe>
					                  </div>
									  <?php
									}
									?>
								</div>
								<a type="submit" id="iframe_id" data-val="<?php echo $fetch["video_id"].','.$phone1;?>" class="btn btn-outline-primary btn-xs">stop Video</a>
							</form>
							</div>
						</div>
                        <?php
                            }
                            ?>
					</div>
				</div>
			</div>
		</div>
	</div>
	<?php
include_once('./includes/footer.php');
?>
	
	<script>
        $(document).on("click","#iframe_id",function(){
			   var formid = $(this).data("val");
			   var result = formid.split(',');
			   var videoid = result[0];
			   var phone = result[1];
              $.ajax({
                    url:"phpfiles/videocode.php",
                    method:"POST",
                    data: {videoid : videoid, user_phone : phone},
                    success:function(response){
						alert(response);
						location.reload();
                    }
                });
            });
    </script>
