
<?php
include("topbar.php");
include("navber.php");
?>


    <!-- Carousel Start -->
	<div class="fluid-container">
		<div class="carousel slide" id="demo" data-ride="carousel" >
			<ul class="carousel-indicators">
				<li data-target="#demo" data-slide-to="0" class="active"></li>
				<li data-target="#demo" data-slide-to="1"></li>
				<li data-target="#demo" data-slide-to="2"></li>
				<li data-target="#demo" data-slide-to="3"></li>
			</ul>
			<div class="carousel-inner">
				<div class="carousel-item active" style="background-color: rgb(0, 0, 0);">
					<img src="img/slideShow-1.jpg" id="slide-image" style="  height: 450px; z-index: -3; opacity: 0.3;" />
					<div class="carousel-caption" >
						<h1 class="display-3 slide font-weight-bold" style="color:#FF6600; letter-spacing: 7px; z-index: 3;">Afghanistan International</h1>
						<p class="display-3 slide font-weight-bold">School</p>
					</div><!--end of carousel-caption-->
				</div><!--end of craousel-item-->
				<div class="carousel-item" style="background-color: rgb(0, 0, 0);">
					<img src="img/slideShow-2.jpg" id="slide-image" style=" height: 450px; z-index: -3; opacity: 0.3;"/>
					<div class="carousel-caption">
						<h1 class="display-3 slide font-weight-bold" style="color:#FF6600; letter-spacing: 7px; z-index: 3;">Afghanistan International</h1>
						<p class="display-3 slide font-weight-bold">School</p>
					</div><!--end of carousel-caption-->
				</div><!--end of craousel-item-->
				<div class="carousel-item" style="background-color: rgb(0, 0, 0);">
					<img src="img/slideShow-3.jpg" id="slide-image" style=" height: 450px; z-index: -3; opacity: 0.3;"/>
					<div class="carousel-caption">
						<h1 class="display-3 slide font-weight-bold" style="color:#FF6600; letter-spacing: 7px;z-index: 3;">Afghanistan International</h1>
						<p class="display-3 slide font-weight-bold">School</p>
					</div><!--end of carousel-caption-->
				</div><!--end of craousel-item-->
				<div class="carousel-item" style="background-color: rgb(0, 0, 0);">
					<img src="img/slideShow-4.jpg" id="slide-image" style=" height: 450px; z-index: -3; opacity: 0.3;"/>
					<div class="carousel-caption">
						<h1 class="display-3 slide font-weight-bold" style="color:#FF6600; letter-spacing: 7px; z-index: 3;">Afghanistan International</h1>
						<p class="display-3 slide font-weight-bold">School</p>
					</div><!--end of carousel-caption-->
				</div><!--end of craousel-item-->
			</div><!--end of carousel-inner-->
			<a href="#demo" class="carousel-control-prev" data-slide="prev">
				<span class="carousel-control-prev-icon fa-xs" id="iconprev"></span>
			</a>
			<a href="#demo" class="carousel-control-next" data-slide="next">
				<span class="carousel-control-next-icon fa-xs" id="iconnext"></span>
			</a>
		</div>
	</div>
	
	<!-- Carousel End -->


   
	<?php
	$sel_home_record = "select * from home_table";
	$homrec = mysqli_query($connect,$sel_home_record);
	
	while ($row = mysqli_fetch_array($homrec)) {
		if ($row['Visiblity']=="show") {
	?> 


	<div class="container-fluid py-5">
        <div class="container py-5">
			<div class="row align-items-center">
				<div class="col-lg-5 col-sm-12">
                    <img src="ContentManagemantSystems/image/<?php echo $row['Picture_Home']; ?>" class="img-fluid rounded mb-lg-0">
                </div>
                <div class="col-lg-7 col-sm-12 mb-0 pt-0">
                    <div class="text-left">
                        <h1 class="col-lg-5 mb-4 mx-0 px-0"  style="letter-spacing: 2px;"><?php echo $row['Title_Home']; ?></h1>
                    </div>
                    <p><?php echo $row['Description_Home']; ?></p>
                    <a href="about.php" class="btn btn-warning border py-md-2 px-md-4 font-weight-semi-bold mt-2">Learn More</a>
                </div>
			</div>
		</div>
	</div>

	<?php
		}
	}
	?>
	 
	<!-- border image start	 -->
	<div class="container-fluid my-0 py-0">
    	<div class="d-flex flex-column" style="min-height: 50px">
    		<img src="img/home-bottam.png" style="height: 250px;">
    	</div>
    </div>
	<!-- border image end -->

	<!-- Active Start -->
    <div class="container-fluid py-5">
        <div class="container py-5">
        	<?php
			$selRecord = "select * from home_page_activitise";
			$Data = mysqli_query($connect,$selRecord);
			
			while ($row = mysqli_fetch_array($Data)) {
				if ($row['Visiblity']=="show") {
			?>
            <div class="text-center mb-5">
            	<div class="row" style="background-color:#F7F7F7;">
	         		<div class="col-lg-2"></div>
	            	<div class="col-lg-8">
		                <h5 class="text-warning text-uppercase mb-3 pt-3" style="letter-spacing: 5px;"><?php echo $row['Activitise']; ?></h5>
		                <h1><?php echo $row['Activity_Title']; ?></h1>
		                <p class="text-center pt-3 pb-5"><?php echo $row['Description']; ?></p>
		            </div>
		            <div class="col-lg-2"></div>
	        	</div>
            </div>
		    <?php
				}
			}
			?>
            <div class="row">
            	<?php
				$selRecord = "select * from home_page_activity_types";
				$Data = mysqli_query($connect,$selRecord);
				
				while ($row = mysqli_fetch_array($Data)) {
					if ($row['Visiblity']=="show") {
				?>
                <div class="col-lg-3 col-md-4 mb-4">
                    <div class="rounded overflow-hidden mb-2">
                        <img class="img-fluid" src="ContentManagemantSystems/image/<?php echo $row['Picture']; ?>" alt="">
                        <div class="bg-secondary p-4">
                            <h3 class="h5"><?php echo $row['Name_Active']; ?></h3> 
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
    <!-- Active End -->
	
	<!-- border image start	 -->
	<div class="container-fluid my-0 py-0 mx-0 px-0">
    	<div class="d-flex flex-column mx-0 px-0" style="background-color: rgb(0, 0, 0);">
    		<img src="img/border-image.jpg" class="mx-0 px-0" style="height: 300px; opacity: 0.5;">
    	</div>
    </div>
	<!-- border image end -->

	<?php
		include("footer.php");
	?>
</body>
</html>
