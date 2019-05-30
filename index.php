<?php
require_once('src/emmachiarelli.php');

$conn = db_connect();

//set traffic count	
set_traffic_count($conn);

//about section	
$about = $conn->query(sql("article_sql", 1001));

//recent news
$recent_news = $conn->query(sql("recentpost_sql", 2));

//latest results
$results = $conn->query(sql("latest_results_sql"));
			
//upcoming meets
$upcoming_meets = $conn->query(sql("upcomingmeets_sql", 5));

//latest videos
$videos = $conn->query(sql("latestvideos_sql", 2));			

$conn->close();

?>
<!DOCTYPE html>

<html lang="en">
<head>

	<?php set_html_title("Emma Chiarelli | Sun Country Gymnastics - Gainesville, FL"); ?>

	<!-- Favicon Icon -->
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
    <link rel="icon" type="image/png" href="images/favicon.png">
    <link rel="apple-touch-icon" href="images/favicon.png">
	
	<!-- CSS -->
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/preloader.css">
	<link rel="stylesheet" href="css/navigation.css">
 
	<!-- Slider Revolution CSS -->
	<link rel="stylesheet" type="text/css" href="rs-plugin/css/settings.css" media="screen">
	
	<!-- Owl Carousel CSS -->
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/owl.theme.css">
	
</head>
<body>

<?php start_site_preloader(); ?>

    <!-- Page Wraper -->
    <div id="page-wraper">
        <div id="home-section" class="header-wrapper">
		
			<!-- Header -->
			<div id="header" class="header">

				<?php display_nav_menu(); ?>
			
			</div>
			<!-- End Header -->
			
            <!--Intro Section -->
            <section id="intro">			
			
				<?php slider_revolution(); ?>
				
			</section>
            <!-- End Intro Section-->
		</div>
		
		<!-- Content -->
		<div class="content-wrapper" id="begin">
		
			<!-- About Section -->
			<section id="about-section">
				<div class="col-12">
			
					<?php display_article_summary($about, "row-1-image"); ?>
					
				</div>
			</section>
			<!-- End About Section -->
			
		</div>
		
		<div class="clearfix"></div>
		
		<?php display_parallax(); ?> 
		
		<div class="clearfix"></div>
		
		<div class="content-wrapper">
		
			<!-- News Section -->
			<section id="news-section">
				<div class="col-12">
					<h3>RECENT NEWS</h3>
				</div>
				<div class="col-12 row-1">
				
					<?php display_article_summary($recent_news, "row-1-image"); ?>
					
				</div>
			</section>
			<!-- End News Section -->

		</div>
		
		<div class="clearfix"></div>
		
		<!-- Owl Carousel Section -->
		<section id="carousel">
			<div id="owl-container" class="owl-carousel owl-theme">
				<div class="item-1">
					<h3>LATEST RESULTS</h3><br>
					<div class="owl-container-inner-1">
					
						<?php display_latest_results($results); ?>
						
					</div>
				</div>
				<div class="item-2">
					<h3>UPCOMING MEETS</h3><br>
					<div class="owl-container-inner-2">

						<?php display_meets($upcoming_meets); ?>
					
					</div>

				</div>
			</div>
		</section>
		<!-- End Owl Carousel Section -->			

		<div class="clearfix"></div>
		
		<div class="content-wrapper">
		
			<!-- Video Section -->
			<section id="videos-section">
				<div class="col-12">
					<h3>LATEST VIDEOS</h3>
				</div>
                <!-- Video Player -->
				<div class="col-12">
				
					<?php display_latest_videos($videos); ?>
					
				</div>
			</section>
			<!-- End Video Section -->
		
		</div>

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
	<!-- Slider Revolution -->
	<script src="rs-plugin/js/jquery.themepunch.tools.min.js" type="text/javascript"></script>
	<script src="rs-plugin/js/jquery.themepunch.revolution.min.js" type="text/javascript"></script>
	<!-- Owl Carousel -->
	<script src="js/owl.carousel.js" type="text/javascript"></script>
	
</body>
</html>