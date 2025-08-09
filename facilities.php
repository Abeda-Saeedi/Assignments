<?php
include("topbar.php");
include("navber.php");
include("header.php");
?>
    <div class="container-fluid page-header">
        <div class="container">
            <div class="d-flex flex-column justify-content-center" style="min-height: 300px">
                <h3 class="display-4 text-white text-uppercase">Campus & Facilities</h3>
                <div class="d-inline-flex text-white">
                    <p class="m-0 text-uppercase"><a class="text-white" href="">Home</a></p>
                    <i class="fa fa-angle-double-right pt-1 px-3"></i>
                    <p class="m-0 text-uppercase">Contact</p>
                </div>
            </div>
        </div>
    </div>

    <?php
		$SelectRecord = "select * from facility_table";
		$Data = mysqli_query($connect,$SelectRecord);
		
		while ($row = mysqli_fetch_array($Data)) {
			if ($row['Visiblity']=="show") {
	?>

	<div class="container-fluid py-5" style="background-color:#F7F7F7;">
        <div class="container my-5">
			<div class="row">
				<div class="col-lg-7 col-md-7 col-sm-12 my-5">
					<div class="font-weight-bold py-1 mb-1">
						<h1 ><?php echo $row['Title_Facilities']; ?></h1>
					</div>
					<div>
						<p><?php echo $row['Description_Facilities']; ?></p>
					</div>
				</div>
				<div class="col-lg-5 col-md-5 col-sm-12">
					<img src="ContentManagemantSystems/image/<?php echo $row['Facilities_Picture']; ?>" class="img-fluid rounded mb-lg-0" id="im">
				</div>
			</div>
		</div>
	</div>	
	<?php
    	}
    }
	?>
	
<!-- Courses Start -->
    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row">
                <?php
                    $SelectRecord = "select * from facilities_table";
                    $Data = mysqli_query($connect,$SelectRecord);
                    
                    while ($row = mysqli_fetch_array($Data)) {
                        if ($row['Visiblity']=="show") {
                ?>
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="rounded overflow-hidden mb-2">
                        <img class="img-fluid" src="ContentManagemantSystems/image/<?php echo $row['Picture']; ?>" alt="">
                        <div class="bg-secondary p-4">
                            <p><?php echo $row['Description']; ?></p>
                        </div>
                    </div>
                </div>
                <?php
                    }
                }
                ?>
            </div>
        </div>
    </div>
    <!-- Courses End -->
	<!-- border image start  -->
    <div class="container-fluid my-0 py-0 mx-0 px-0">
        <div class="d-flex flex-column mx-0 px-0" style="background-color: rgb(0, 0, 0);">
            <img src="img/border-image.jpg" class="mx-0 px-0" style="height: 300px; opacity: 0.5;">
        </div>
    </div>
    <!-- border image end -->
	
	<?php
		include("footer.php");
	?>


