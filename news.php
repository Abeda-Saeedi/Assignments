<?php
include("topbar.php");
include("navber.php");
include("header.php");
?>
	<div class="container-fluid page-header">
        <div class="container">
            <div class="d-flex flex-column justify-content-center" style="min-height: 300px">
                <h3 class="display-4 text-white text-uppercase">news</h3>
                <div class="d-inline-flex text-white">
                    <p class="m-0 text-uppercase"><a class="text-white" href="">Home</a></p>
                    <i class="fa fa-angle-double-right pt-1 px-3"></i>
                    <p class="m-0 text-uppercase">Contact</p>
                </div>
            </div>
        </div>
    </div>
	<div class="container-fluid py-5 my-0" style="background-color:#F7F7F7;">
		<div class="container py-5">
			<div class="row py-4">
				<?php
					$selectRecord = "select * from news_table";
					$Data = mysqli_query($connect,$selectRecord);
					
					while ($row = mysqli_fetch_array($Data)) {
						if ($row['Visiblity']=="show") {
					?>
					<div class="col-lg-4 col-sm-6 col-md-4">
						<div class="card">
						 	<img class="card-img-top" src="ContentManagemantSystems/image/<?php echo $row['Picture']; ?>" alt="card image">
						 	<div class="card-body">
						 		<h3 class="card-title"><?php echo $row['Title']; ?></h3>
						 		<p class="card-text">
						 			<?php echo $row['Description']; ?> 
						 		</p>
						 	</div>
						</div><!--end of card-->
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
	<?php
		include("footer.php");
	?>


</body>
</html>



