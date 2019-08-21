<?php

/*
MIT License

Copyright (c) 2019 Chiatek

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

function set_html_title($title) {
?>
	<title><?php echo $title; ?></title>
	<meta charset="utf-8">
    <meta name="description" content="The Official Website of Emma Chiarelli">
	<meta name="keywords" content="chiarelli, emma, gymnast">
    <meta name="author" content="chiatek">	
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<?php
}

function set_traffic_count($conn) {
	$sql = "SELECT * from traffic WHERE date = CURDATE()";
	$result = $conn->query($sql);

	if ($result->num_rows > 0) {
		$row = $result->fetch_assoc();
		$sql = "UPDATE traffic SET visits = ".$row["visits"]." + 1 WHERE trafficid = ".$row["trafficid"]."";
		$conn->query($sql);
	} 
	else {
		$sql = "INSERT INTO traffic (visits, date) VALUES (1, NOW())";
		$conn->query($sql);
	}
}

function start_site_preloader() {
?>
    <!-- Site preloader -->
    <section id="preloader">
        <div class="site-spinner"></div>
    </section>
    <!-- End Site preloader -->
<?php
}

function display_nav_menu() {
	
	$page = array("home" => "index.php",
				"about" => "about.php",
				"profile" => "profile.php",
				"news" => "news.php",
				"results" => "results.php",
				"contact" => "contact.php"
				);
?>
	<div class="header-inner">
		<!-- Logo -->
		<div class="logo">
			<a href="index.php">
				<img src="images/logo.png">
			</a>
		</div>
		<!-- End Logo -->

		<!-- Navigation Icon -->
		<div class="nav-menu-icon">
			<a><i class="fa fa-bars"></i></a>
		</div>
		<!--End Navigation Icon-->

		<!-- Navigation Menu -->
		<div id="nav" class="nav-menu singlepage-nav">
			<ul class="nav-menu-inner">
<?php		foreach ($page as $name => $url) {
				if(strpos($_SERVER['PHP_SELF'],$url)===false) {
					echo '<li><a id="'.$name.'" href="'.$url.'">'.strtoupper($name).'</a></li>';
				}
			}
?>
			</ul>
		</div>
		<!-- End Navigation Menu -->
	</div>
<?php
}

function display_header($title, $image) {
?>
	<!-- Intro Section -->
	<section id="parallax-<?php echo $title; ?>">
		<div class="intro-container">
			<img src="<?php echo $image; ?>" class="header-image">
			<div class="header-text"><h2><?php echo strtoupper($title);?></h2></div>
		</div>
	</section>
	 <!-- End Intro Section -->
<?php
}

function display_parallax() {
?>
	<!-- Start Profile Parallax Section -->
	<section id="parallax-profile" class="profile-small">
		<img src="images/m-parallax-5.jpg" class="header-image">
		<div class="profile-inner into-container">
			<div class="col-4">
				<i class="fa fa-trophy"></i>
				<h3>2016 Level 9 Eastern National Qualifier- 2nd place floor, 5th place Vault, JR 7 Team Champion.</h3>
			</div>
			<div class="col-4">
				<i class="fa fa-trophy"></i>
				<h3>2016 Level 9 Region 8 Regional Floor Champion.</h3>
			</div>
			<div class="col-4">
				<i class="fa fa-trophy"></i>
				<h3>2016 Level 9 FL State All-Around Champion- 38.075; 1st place Vault, Bars, Floor.</h3>
			</div>			
		</div>
	</section>
	<!-- End Profile Parallax Section -->
<?php
}

function do_html_footer() {
?>
	<table class="footer-table">
		<tr>
			<th><h3>Emma Chiarelli</h3>
			<h5>Class of 2020</h5><th>
			<td>
				<table>
					<td>
						<ul class="social">
							<li><a href="https://www.youtube.com/channel/UCGy3bEwvB9Hsf6tLHmGzJ3A"><img src="images/youtube.png"></a></li>
							<li><a href="https://www.instagram.com/emma_gymnast2020/"><img src="images/instagram.png"></a></li>
						</ul>
					</td>
				</table>
			</td>
		</tr>
	</table>			
	<div class="col-12">
		<p class="copyright">&copy;2016 emmachiarelli.com</p>
	</div>
<?php
}

function display_search() {
?>
	<h4>SEARCH</h4>
	<hr>
	<form class="form" action="filter.php" method="GET">
		<div class="search">
			<input class="sidebar-search" type="text" name="query" id="search" placeholder="Search Here">
		</div>
	</form>
<?php
}

function display_links() {
?>	
	<h4>LINKS</h4>
	<hr>
	<ul class="links">
		<li><h6><a href="http://usagym.org" target="_blank">USA Gymnastics</a></h6></li><br>
		<li><h6><a href="http://www.mymeetscores.com/gymnast.pl?gymnastid=10883257" target="_blank">My Meet Scores</a></h6></li><br>
		<li><h6><a href="http://www.gymdivas.us" target="_blank">Gym Divas</a></h6></li><br>
	</ul>
<?php
}

function display_sections() {
?>
	<h4>SECTIONS</h5>
	<hr>
	<ul class="tag">
		<li><a href="about.php">ABOUT</a></li>
		<li><a href="profile.php">PROFILE</a></li>
		<li><a href="results.php">RESULTS</a></li>
		<li><a href="contact.php">CONTACT</a></li>
	</ul>					
<?php
}

function sendmail($name, $email, $comment) {

	$txt = "Name: ".str_replace("\r\n", " ", $name)."\n".
		"Email: ".str_replace("\r\n", " ", $email)."\n".
		"Comments:\n".str_replace("\r\n", " ", $comment)."\n";

	$to = "email@domain.com";
	$subject = "Email Subject";
	$headers = "From: yourdomain.com <DoNotReply@yourdomain.com>";

	mail($to, $subject, $txt, $headers);
}

function display_sendmail($name) {
?> 
	<br>
	<br>
	<h3>Thanks, <strong><?php echo $name; ?></strong></h3>
	<h3>Your message has been sent.</h3>
	<h4 class="table-link"><a href="index.php">return home...</a></h4>
	<br>
	<br>
	<br>
<?php
}

?>