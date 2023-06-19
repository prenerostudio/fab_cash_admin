<?php
include_once('./includes/header.php');
include_once('./includes/sidebar.php');
?>
<?php 
     $id = $_GET['update'];
 $query ="SELECT * FROM user_register WHERE user_id='$id'";
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
								<h4 class="card-title">Update User</h4> </div>
							<div class="card-body">
								<div class="basic-form ">
									<form id="userform" method="post">
                                    <div class="form-group">
										<label class="mb-1"><strong>First Name</strong></label>
                                         <input type="text" name="u_fname" class="form-control" value="<?php echo $fetch['u_fname'];?>">
										</div>
										<div class="form-group">
										<label class="mb-1"><strong>User phone</strong></label>
                                         <input type="number" name="u_phone" class="form-control" value="<?php echo $fetch['u_phone'];?>">
										</div>
										<div class="form-group">
										<label>Status</label>
                                        <select class="form-control" name="u_status" id="u_status">
                                            <option value="<?php echo $fetch['u_status'];?>"><?php echo $fetch['u_status'];?></option>
                                            <?php
                                                $qry = mysqli_query($connection, "SELECT * FROM packages");
                                                while($row = mysqli_fetch_array($qry)){
                                            ?>
                                            <option value="<?php echo $row['package_name'] ?>"><?php echo $row['package_name'] ?></option>
                                            <?php } ?>
                                        </select>
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

    $u_fname = $_POST['u_fname'];
   $u_phone = $_POST['u_phone'];
   $u_status = $_POST['u_status'];

    $slct = "SELECT * FROM user_register WHERE u_phone= '$u_phone' &&  u_fname = '$u_fname'";
    $run = mysqli_query($connection,$slct);
    if(mysqli_num_rows($run)>0){
		?>
		<script>
			alert("User already exist");
		</script>
		<?php 
}else{
$query1="UPDATE user_register SET u_fname = '$u_fname', u_status = '$u_status',  u_phone= '$u_phone' WHERE user_id='$id'";
  $exe1 = mysqli_query($connection,$query1);
  if ($exe1) {
	?>
    <script>
   alert('User Updated');
        setTimeout(function(){location.href="userinfo.php"} , 0000);
  </script>    
  <?php
  }else{
    ?>
    <script>
    alert('User  not Updated');
        </script>
   <?php
  }
}
}
?>