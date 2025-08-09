<?php
include("topbar.php");
include("navber.php");
include("header.php");
?>
	<div class="container-fluid page-header">
        <div class="container">
            <div class="d-flex flex-column justify-content-center" style="min-height: 300px">
                <h3 class="display-4 text-white text-uppercase">Learning</h3>
                <div class="d-inline-flex text-white">
                    <p class="m-0 text-uppercase"><a class="text-white" href="">Home</a></p>
                    <i class="fa fa-angle-double-right pt-1 px-3"></i>
                    <p class="m-0 text-uppercase">Contact</p>
                </div>
            </div>
        </div>
    </div>
    <?php
    $SelectRecord = "select * from learning_table";
    $Data = mysqli_query($connect,$SelectRecord);
    
    while ($row = mysqli_fetch_array($Data)) {
        if ($row['Visiblity']=="show") {
    ?>
       
    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row align-items-center">
                <div class="col-lg-7 py-2 px-4" style="border-left: solid #FF6600 5px; border-right: solid #FF6600 5px;background-color:#F7F7F7;">
                    <div class="text-left mb-4">
                        <h1><?php echo $row['Title']; ?></h1>
                    </div>
                    <p><?php echo $row['Description']; ?></p>
                </div>
                <div class="col-lg-5">
                    <img class="img-fluid rounded mb-4 mb-lg-0" src="ContentManagemantSystems/image/<?php echo $row['Picture']; ?>" alt="">
                </div>
            </div>
        </div>
    </div>
    <?php
        }
    }
    ?>

    <div class="container-fluid py-5" style="background-color:#F7F7F7;">
        <div class="container pb-5 pt-5">
            <div class="row">
                <?php
                $SelectRecord = "select * from qualty_learning";
                $Data = mysqli_query($connect,$SelectRecord);
                
                while ($row = mysqli_fetch_array($Data)) {
                    if ($row['Visiblity']=="show") {
                ?> 
                <div class="col-lg-3 col-md-4 mb-4">
                    <div class="rounded mb-2">
                        <img class="img-fluid" src="ContentManagemantSystems/image/<?php echo $row['Picture']; ?>" alt="">
                        <div class="bg-dark text-light p-4">
                            <h3 class="h5" style="color:#FF6600;"><?php echo $row['Title']; ?></h3> 
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