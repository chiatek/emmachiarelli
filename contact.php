<?php
require_once('src/emmachiarelli.php');

$name = $_POST['name'];
$email = $_POST['email'];
$comment = $_POST['comment'];

$conn = db_connect();

//a comment has been submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
	//validate user input, update database, and send email
	if (!($error = validate_form($_POST))) {
		set_comments($_POST, $conn);
		sendmail($name, $email, $comment);
		$sendmail = true;
	}
}

//contact section		
$contact = $conn->query(sql("contact_sql", 23440));	
				
$conn->close();		

?>
<!DOCTYPE html>

<html lang="en">
<head>
	<?php set_html_title("Emma Chiarelli | Contact"); ?>
	
	<!-- Favicon Icon -->
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
    <link rel="icon" type="image/png" href="images/favicon.png">
    <link rel="apple-touch-icon" href="images/favicon.png">
	
	<!-- CSS -->
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/preloader.css">
	<link rel="stylesheet" href="css/navigation.css">

</head>
<body>

	<?php start_site_preloader(); ?>

    <!-- Page Wraper -->
    <div id="page-wraper">
        <div class="header-wrapper">

			<!-- Header -->
			<div id="header" class="header">

				<?php display_nav_menu(); ?>
			
			</div>
			<!-- End Header -->
			
		</div>	

		<?php display_header("contact", "images/m-parallax-4.jpg"); ?>
		
        <div class="clearfix"></div>
		
		<!-- Content --------------------------------------------------------------------------------->
		<div class="content-wrapper">
		
			<!-- Contact Section -->
			<section id="contact-section">
			
				<div class="col-6">
					<img src="images/contact.jpg" class="contact-image" alt="Emma Chiarelli">
				</div>	
				<div class="col-6">
				
					<?php 	
						if($sendmail) { 
							display_sendmail($name); 
						}
						else {
							display_contact($contact);
					
							echo '<div class="error">'.$error['nameErr'].'</div>
							<div class="error">'.$error['emailErr'].'</div>
							<div class="error">'.$error['commentErr'].'</div>';						
						
							display_comments_form(1000, "contact");
						}
					?>

				</div>	
					
			</section>
			<!-- End Contact Section -->
			
		</div>
		<!-- End Content Wrapper -->
		
		<div class="clearfix"></div>
		
		<!-- Footer -->
		<footer>	

			<!-- Footer Small -->
			<div class="footer-small">
				<div class="col-12">		
		
					<?php do_html_footer(); ?>
					
				</div>
			</div>	
			<!-- End Footer Small -->
		
		</footer>
		<!-- End Footer -->
		
	</div>	
	<!-- End Page Wrapper -->	
	
    <!-- Javascript -->
	<script src="js/jquery-1.11.2.min.js" type="text/javascript"></script>
	<script src="js/main.js" type="text/javascript"></script>
	
</body>
</html>