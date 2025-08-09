
<?php
include("topbar.php");
include("navber.php");
include("header.php");
?>
	<div class="container-fluid page-header">
        <div class="container">
            <div class="d-flex flex-column justify-content-center" style="min-height: 300px">
                <h3 class="display-4 text-white text-uppercase"> our team</h3>
                <div class="d-inline-flex text-white">
                    <p class="m-0 text-uppercase"><a class="text-white" href="">Home</a></p>
                    <i class="fa fa-angle-double-right pt-1 px-3"></i>
                    <p class="m-0 text-uppercase">Contact</p>
                </div>
            </div>
        </div>
    </div>
    <?php
    $selectRecord = "select * from team_table";
    $Data = mysqli_query($connect,$selectRecord);
    
    while ($row = mysqli_fetch_array($Data)) {
        if ($row['Visiblity']=="show") {
    ?>
    <div class="container-fluid py-5 mt-5">
        <div class="container">
            <div class="text-center">
            	<div class="row" style="background-color:#F7F7F7;">
	         		<div class="col-lg-2"></div>
	            	<div class="col-lg-8">
		                <h1><?php echo $row['Title']; ?></h1>
		                <p class="text-center pt-3 pb-5"><?php echo $row['Description']; ?></p>
		            </div>
		            <div class="col-lg-2"></div>
	        	</div>
            </div>
        </div>
    </div>
	<hr/>
    <?php
        }
    }
    ?>
	<!-- Courses Start -->
    <div class="container-fluid py-5">
        <div class="container py-0">
            <div class="row">
                <?php
                $selectRecord = "select * from employee_table";
                $Data = mysqli_query($connect,$selectRecord);
                
                while ($row = mysqli_fetch_array($Data)) {
                    if ($row['Visiblity']=="show") {
                ?>
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="rounded overflow-hidden mb-2">
                        <img class="img-fluid" src="ContentManagemantSystems/image/<?php echo $row['Picture']; ?>" alt="">
                        <div class="bg-secondary p-4">
                            <div class="d-flex justify-content-between mb-3">
                                <h3 class="m-0"><?php echo $row['Name']; ?></h3>
                            </div>
                            <p><?php echo $row['Description']; ?></p>
                            <div class="border-top mt-4 pt-4">
                                <div class="d-flex justify-content-between">
                                    <h6 class="m-0"><i class="fa fa-envelope text-warning mr-2"></i><?php echo $row['Email']; ?></h6>
                                </div>
                            </div>
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
    <!-- border image start  -->
    <div class="container-fluid my-0 py-0 mx-0 px-0">
        <div class="d-flex flex-column mx-0 px-0" style="background-color: rgb(0, 0, 0);">
            <img src="img/border-image.jpg" class="mx-0 px-0" style="height: 300px; opacity: 0.5;">
        </div>
    </div>
    <!-- border image end --> 
    <!-- Courses End -->
    <?php
		include("footer.php");
	?>

</body>
</html>
