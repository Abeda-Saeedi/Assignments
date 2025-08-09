<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
<!--Get your code at fontawesome.com-->

<?php
include("topbar.php");
include("navber.php");
include("header.php");
?>
	<div class="container-fluid page-header">
        <div class="container">
            <div class="d-flex flex-column justify-content-center" style="min-height: 300px">
                <h3 class="display-4 text-white text-uppercase">About</h3>
                <div class="d-inline-flex text-white">
                    <p class="m-0 text-uppercase"><a class="text-white" href="">Home</a></p>
                    <i class="fa fa-angle-double-right pt-1 px-3"></i>
                    <p class="m-0 text-uppercase">Contact</p>
                </div>
            </div>
        </div>
    </div>
	<?php
		$SelectAboutRecord = "select * from about_table";
		$AboutRecord = mysqli_query($connect,$SelectAboutRecord);
		
		while ($row = mysqli_fetch_array($AboutRecord)) {
			if ($row['Visiblity']=="show") {
	?>

	<div class="container-fluid py-5 my-5">
        <div class="container ">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-12">
					<div class="font-weight-bold py-1 mb-1">
						<h1 ><?php echo $row['About_Title']; ?></h1>
					</div>
					<div>
						<p><?php echo $row['About_Info']; ?></p>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-12">
					<img src="ContentManagemantSystems/image/<?php echo $row['Picture']; ?>" class="img-fluid rounded mb-lg-0" id="im">
				</div>
			</div>
		</div>
	</div>	
	<?php
		}
	}
	$SelectAboutRecord = "select * from about_us_table";
		$AboutRecord = mysqli_query($connect,$SelectAboutRecord);
		
		while ($row = mysqli_fetch_array($AboutRecord)) {
			if ($row['Visiblity']=="show") {
	?>	
 	<div class="container-fluid py-5" style="background-color:#F7F7F7;">
        <div class="container py-5">
            <div class="text-center mb-3">
            	<div class="row">
	         		<div class="col-lg-1 col-md-1">
	         		</div> 
	            	<div class="col-lg-8 col-md-11 border-right border-left">
		                <h1><?php echo $row['Title']; ?></h1>
		                <p class="text-center pt-3"><?php echo $row['Description']; ?></p>
		                <a href="about.php" class="btn btn-warning border py-md-2 px-md-4 font-weight-semi-bold mt-2">Learn More</a>
		            </div>
		            <div class="col-lg-3 col-md-12">
		            	<img src="ContentManagemantSystems/image/<?php echo $row['Picture']; ?>" width="230px">
	         		</div>
	        	</div>
            </div>
        </div>
	</div>
	<?php
		}
	}
		include("footer.php");
	?>













