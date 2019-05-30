<?php
require_once('src/emmachiarelli.php');

$meetid = $_GET["meetid"];
$event = $_GET["event"];	
$query = $_GET["query"];

$conn = db_connect();	

//results section (display meet, videos, and pictures)
if($meetid) {		
	$meet = $conn->query(sql("meet_sql", $meetid));
	
	if($event == 0) {	//show results from all events	
		$videos = $conn->query(sql("meet_videos_sql", $meetid));		
		$pictures = $conn->query(sql("meet_pictures_sql", $meetid));
	} 
	else {	//show results from selected event only
		$videos = $conn->query(sql("mtevt_videos_sql", $meetid, $event));	
		$pictures = $conn->query(sql("mtevt_pictures_sql", $meetid, $event));
	}	
}

//results section (display search results for meet, videos, and pictures)
if($query) {
	$meet = $conn->query(sql("meet_search_sql", $query));		
	$videos = $conn->query(sql("video_search_sql", $query));	
	$pictures = $conn->query(sql("picture_search_sql", $query));	
}

//filter sidebar
$filter = $conn->query(sql("results_sql"));

//recent post sidebar		
$recent_post = $conn->query(sql("recentpost_sql", 3));			

$conn->close();	

?>
<!DOCTYPE html>

<html lang="en">
<head>
	<?php set_html_title("Emma Chiarelli | Results"); ?>
	
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

		<?php display_header("results", "images/m-parallax-3.jpg"); ?>
		
        <div class="clearfix"></div>
		
		<!-- Content --------------------------------------------------------------------------------->
		<div class="content-wrapper">
		
			<!-- Results Section -->
			<section id="results-section">
			
				<div class="col-8">
					<div class="results">
						<br><br><br>
						
						<div id="meet">
							<a class="toggle-btn" id="meet-hide" style="display: none;"><i class="fa fa-angle-double-up"></i></a>
							<a class="toggle-btn" id="meet-show"><i class="fa fa-angle-double-down"></i></a>
							<h4>MEETS (<?php echo $meet->num_rows; ?>)</h4>
							<hr>
						</div>
						
						<br>
						
						<div id="meet-toggle">						
						
							<?php display_results($meet, true); ?>
							<br>
							
						</div>
						
						<div class="clearfix"></div>
						<br><br>
						
						<div id="video">
							<a class="toggle-btn" id="video-hide" style="display: none;"><i class="fa fa-angle-double-up"></i></a>
							<a class="toggle-btn" id="video-show"><i class="fa fa-angle-double-down"></i></a>
							<h4>VIDEOS (<?php echo $videos->num_rows; ?>)</h4>
							<hr>
						</div>				
						
						<div id="video-toggle">
							<div class="col-12">
								<?php display_media_results($videos, "videos"); ?>
							</div>
						</div>
						
						<div class="clearfix"></div>
						<br><br>
						
						<div id="pictures">
							<a class="toggle-btn" id="pictures-hide" style="display: none;"><i class="fa fa-angle-double-up"></i></a>
							<a class="toggle-btn" id="pictures-show"><i class="fa fa-angle-double-down"></i></a>
							<h4>PICTURES (<?php echo $pictures->num_rows; ?>)</h4>
							<hr>
						</div>
						
						<div id="pictures-toggle">
							<div class="col-12">
								<?php display_media_results($pictures, "pictures"); ?>
							</div>
						</div>
						
						<div class="clearfix"></div>
						
					</div>
				</div>
				
			</section>
			<!-- End Results Section -->
			
			<!-- One Column Sidebar -->
			<section id="1col-sidebar" class="sidebar">
				<div class="col-3 sidebar-widget">
			
					<?php display_search(); ?>
					
					<br><br><br>

					<?php display_filter($filter); ?>
					
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