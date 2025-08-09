<?php
include("topbar.php");
include("navber.php");
include("header.php");
?>
    <div class="container-fluid page-header">
        <div class="container">
            <div class="d-flex flex-column justify-content-center" style="min-height: 300px">
                <h3 class="display-4 text-white text-uppercase">Term Time</h3>
                <div class="d-inline-flex text-white">
                    <p class="m-0 text-uppercase"><a class="text-white" href="">Home</a></p>
                    <i class="fa fa-angle-double-right pt-1 px-3"></i>
                    <p class="m-0 text-uppercase">Contact</p>
                </div>
            </div>
        </div>
    </div>
     <!-- About Start -->
    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row align-items-center">
            <?php
                $SelectRecord = "select * from time_table";
                $Data = mysqli_query($connect,$SelectRecord);
                
                while ($row = mysqli_fetch_array($Data)) {
                    if ($row['Visiblity']=="show") {
            ?> 
                <div class="col-lg-4 col-md-4">
                    <img class="img-fluid rounded mb-4 mb-lg-0" src="ContentManagemantSystems/image/<?php echo $row['Picture']; ?>" alt="">
                </div>
                <div class="col-lg-8 col-md-8">
                    <div class="text-left mb-4 px-5" style="border-left: solid #FF6600 5px; border-right: solid #FF6600 5px;background-color:#F7F7F7;">
                        <h1><?php echo $row['Title']; ?></h1>
                        <p class="mb-5"><?php echo $row['Description']; ?></p>
                    </div>
                    <?php
                    }
                }
                ?>
                    <table class="table text-center table-bordered table-hover table-sm">
                        <thead class="thead-light">
                            <tr>
                                <th scope="col">Term</th>
                                <th scope="col">Starting data</th>
                                <th scope="col">Ending data</th>
                                <th scope="col">Timing</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                            $SelectRecord = "select * from time_date_table";
                            $Data = mysqli_query($connect,$SelectRecord);
                            
                            while ($row = mysqli_fetch_array($Data)) {
                                if ($row['Visiblity']=="show") {
                        ?>
                            <tr>
                                <td><?php echo $row['semester']; ?></td>
                                <td><?php echo $row['start_date']; ?></td>
                                <td><?php echo $row['end_date']; ?></td>
                                <td><?php echo $row['time']; ?></td>
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
            
    
    <?php
		include("footer.php");
	?>


