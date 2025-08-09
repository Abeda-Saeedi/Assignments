
<?php
include("topbar.php");
include("navber.php");
include("header.php");
?>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<div class="container-fluid page-header">
        <div class="container">
            <div class="d-flex flex-column justify-content-center" style="min-height: 300px">
                <h3 class="display-4 text-white text-uppercase">Contact</h3>
                <div class="d-inline-flex text-white">
                    <p class="m-0 text-uppercase"><a class="text-white" href="">Home</a></p>
                    <i class="fa fa-angle-double-right pt-1 px-3"></i>
                    <p class="m-0 text-uppercase">Contact</p>
                </div>
            </div>
        </div>
    </div>
	
	<!-- Contact Start -->
    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="text-center mb-5">
                <h5 class="text-primary text-uppercase mb-3" style="letter-spacing: 5px;">Contact</h5>
                <h1>Contact For Any Query</h1>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="contact-form bg-secondary rounded p-5">
                        <div id="success"></div>
                        <form name="sentMessage" id="contactForm" novalidate="novalidate">
                            <div class="control-group">
                                <input type="text" name="txtName" class="form-control border-0 p-4" id="name" placeholder="Your Name" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input type="email" name="txtPhone" class="form-control border-0 p-4" id="email" placeholder="Your Email" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <textarea name="txtComment" class="form-control border-0 py-3 px-4" rows="5" id="message" placeholder="Message"></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="text-center">
                                <input class="btn btn-primary py-3 px-5" type="button" id="sendMessageButton" value="Send">
                                 <input class="btn btn-danger py-3 px-5" type="button" id="resetMessageButton" value="Reset">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->
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


<script type="text/javascript">

	$(document).ready(function(){
		$('#resetMessageButton').click(function(){
			$('#contactForm').trigger('reset');
		});

		$('#sendMessageButton').click(function(){
			var frmMessageData = new FormData($('#contactForm')[0]);
			$.ajax({
				url:'ContentManagemantSystems/formRecordInsertion.php',
				type:'POST',
				data:frmMessageData,
				contentType:false,
				enctype:'multipart/form-data',
				processData:false,
				success: function(data){
					$('#contactForm').trigger('reset');
					Swal.fire({
					  title: 'Do you want to save the changes?',
					  showDenyButton: true,
					  showCancelButton: true,
					  confirmButtonText: 'Send',
					  denyButtonText: `Don't send`,
					}).then((result) => {
					  /* Read more about isConfirmed, isDenied below */
					  if (result.isConfirmed) {
					    Swal.fire('Sended!', '', 'success')
					  } else if (result.isDenied) {
					    Swal.fire('Message are not sended', '', 'info')
					  }
					})
				},
			});
		});
	});
</script>	

</body>
</html>
