<?php
include("topbar.php");
include("navber.php");
include("header.php");
?>
	<div class="container-fluid page-header">
        <div class="container">
            <div class="d-flex flex-column justify-content-center" style="min-height: 300px">
                <h3 class="display-4 text-white text-uppercase">admissions</h3>
                <div class="d-inline-flex text-white">
                    <p class="m-0 text-uppercase"><a class="text-white" href="">Home</a></p>
                    <i class="fa fa-angle-double-right pt-1 px-3"></i>
                    <p class="m-0 text-uppercase">Contact</p>
                </div>
            </div>
        </div>
    </div>
    <?php
	$selectRecord = "select * from join_us_table";
	$Data = mysqli_query($connect,$selectRecord);
	
	while ($row = mysqli_fetch_array($Data)) {
		if ($row['Visiblity']=="show") {
	?> 
	<div class="container-fluid py-4">
        <div class="container py-5">
            <div class="mb-3">
            	<div class="row">
            		<div class="col-lg-4 col-md-12">
		            	<img src="ContentManagemantSystems/image/<?php echo $row['Picture']; ?>" width="300px">
	         		</div> 
	            	<div class="col-lg-8 col-md-12 px-5">
		                <h1><?php echo $row['Title']; ?></h1>
		                <p class="pt-3"><?php echo $row['Description']; ?> </p>
		            </div>
	        	</div>
            </div>
        </div>
	</div>
	<?php
		}
	}
	$selectRecord = "select * from admissions_condition";
	$Data = mysqli_query($connect,$selectRecord);
	
	while ($row = mysqli_fetch_array($Data)) {
		if ($row['Visiblity']=="show") {
	?>
	<div class="container-fluid py-4" style="background-color:#F7F7F7;">
        <div class="container py-5">
            <div class="mb-3">
            	<div class="row">
	            	<div class="col-lg-7 col-md-11 px-5">
	            		<div class="px-3" style="border-left: solid #FF6600 5px; background-color:#F7F7F7;">
			                <h1><?php echo $row['Title']; ?></h1>
			                <p class="pt-3"><?php echo $row['Description']; ?></p>
			                <ul id="fees-list">
			                	<li><?php echo $row['First_Condition']; ?></li>
							  	<li><?php echo $row['Second_Condition']; ?></li>
							  	<li><?php echo $row['Third_Condition']; ?></li>
							  	<li><?php echo $row['Fourth_Condition']; ?></li>
							</ul>
			            </div>
		            </div>
		            <div class="col-lg-4 col-md-12">
		            	<img src="ContentManagemantSystems/image/<?php echo $row['Picture']; ?>" width="300px">
	         		</div> 
	        	</div>
            </div>
        </div>
	</div>
	<?php
		}
	}
	?>
	<div class="container-fluid py-4">
        <div class="container py-5">
            <div class="mb-3">
            	<div class="row">
            		<div class="col-lg-12 col-md-12">
		            	<h1 class="text-center mb-4 pb-3">Fees Table</h1>
	         		</div>
	         		<div class="col-lg-12 col-md-12">
		            	<table class="table text-center table-bordered table-hover">
	                        <thead class="thead-light">
	                            <tr>
	                                <th scope="col">Class</th>
	                                <th scope="col">First Term</th>
	                                <th scope="col">Second Term</th>
	                                <th scope="col">Thirde Term</th>
	                                <th scope="col">Discount</th>
	                                <th scope="col">Installments</th>
	                            </tr>
	                        </thead>
	                        <tbody>
	                        	<?php
	                        	$selectRecord = "select * from fees_table";
								$Data = mysqli_query($connect,$selectRecord);
								
								while ($row = mysqli_fetch_array($Data)) {
									if ($row['Visiblity']=="show") {
								?>
	                            <tr>
	                                <td><?php echo $row['Class']; ?></td>
	                                <td><?php echo $row['First_Semester']; ?></td>
	                                <td><?php echo $row['Second_Semester']; ?></td>
	                                <td><?php echo $row['Third_Semester']; ?></td>
	                                <td><?php echo $row['Discount']; ?></td>
	                                <td><?php echo $row['installments']; ?></td>
	                            </tr>
	                            <?php
									}
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
	<div class="container-fluid py-4" style="background-color:#F7F7F7;">
        <div class="container py-5">
            <div class="mb-3">
            	<div class="row">
            		<?php
                	$selectRecord = "select * from sibling_discounts";
					$Data = mysqli_query($connect,$selectRecord);
					
					while ($row = mysqli_fetch_array($Data)) {
						if ($row['Visiblity']=="show") {
					?>
	            	<div class="col-lg-6 col-md-12 px-5">
	            		<div class="px-3" style="border-left: solid #FF6600 5px; background-color:#F7F7F7;">
			                <h1><?php echo $row['Title']; ?></h1>
			                <p class="pt-3"><?php echo $row['Description']; ?></p>
			            </div>
			        </div>
			         <?php
						}
					}
					?>
			        <div class="col-lg-6 col-md-12 px-5">
		                <table class="table text-center table-bordered table-hover table-sm">
	                        <thead class="thead-light">
	                            <tr>
	                                <th scope="col">Person</th>
	                                <th scope="col">Discounts</th>
	                            </tr>
	                        </thead>
	                        <tbody>
	                        	<?php
			                	$selectRecord = "select * from discounts_table";
								$Data = mysqli_query($connect,$selectRecord);
								
								while ($row = mysqli_fetch_array($Data)) {
									if ($row['Visiblity']=="show") {
								?>
	                            <tr>
	                                <td><?php echo $row['Person']; ?></td>
	                                <td><?php echo $row['Discounts']; ?></td>
	                            </tr>
	                             <?php
									}
								}
								?>
	                        </tbody>
	                    </table>
		            </div>
	        	</div>
            </div>
        </div>
	</div>
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


</body>
</html>



