<?php
require_once('src/emmachiarelli.php');

$articleid = $_GET["articleid"];

$conn = db_connect();

//a comment has been submitted 
if ($_SERVER["REQUEST_METHOD"] == "POST") {
	$articleid = $_POST["articleid"];
	//validate user input and update database
	if (!($error = validate_form($_POST))) {
		set_comments($_POST, $conn);
	}
}	 

//news section (display article)
$article = $conn->query(sql("article_sql", $articleid));	

//comments section
$comments = $conn->query(sql("article_comments_sql", $articleid));

//recent post sidebar		
$recent_post = $conn->query(sql("recentpost_sql", 3));

$conn->close();

?>
<!DOCTYPE html>

<html lang="en">
<head>
	<?php set_html_title("Emma Chiarelli | News"); ?>
	
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

		<?php display_header("news", "images/m-parallax-2.jpg"); ?>
		
        <div class="clearfix"></div>
		
		<!-- Content --------------------------------------------------------------------------------->
		<div class="content-wrapper">
		
			<!-- News Section -->
			<section id="news-section">
			
				<div class="col-8">

					<?php display_article($article); ?>
					
					<div class="clearfix"></div>
					<hr>
					
					<h3>COMMENTS (<?php echo $comments->num_rows; ?>)</h3><br>
						
					<?php display_comments($comments);?>
					
					<div class="clearfix"></div>		
						<br>
						
						<div class="error"><?php echo $error['nameErr']; ?></div>
						<div class="error"><?php echo $error['emailErr']; ?></div>
						<div class="error"><?php echo $error['commentErr']; ?></div>
						
						<br>
				
						<?php display_comments_form($articleid, "comments"); ?>
				
						<br><br>
						
					</div>
					<div class="clearfix"></div>
				</div>
				
			</section>
			<!-- End News Section -->
			
			
			<!-- One Column Sidebar -->
			<section id="1col-sidebar" class="sidebar">
				<div class="col-3 sidebar-widget">
			
					<?php display_search(); ?>
					
					<br><br><br>
			
					<?php display_links(); ?>
					
					<br><br><br>
					
					<?php display_recent_post($recent_post); ?>
					
					<br><br><br>
					
					<?php display_sections(); ?>
					
				</div>
			</section>	
			<!-- End One Column Sidebar -->	
			
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