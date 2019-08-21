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

function display_article($result) {
	echo '<div class="blog">';
	
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {	
			echo '<div class="blog">
				<h4>'.strtoupper(format_output($row["title"])).'</h4>';
			if($row["articleid"] <= 1002) {
				echo '<br>';
			}				
			else {	
				echo '<h6><i>'.strtoupper($row["name"]).'   |   '.$row["date"].'</i></h6>';
				if($row["youtube"]) {
					echo '<iframe class="blog-video" src="'.$row["youtube"].'" frameborder="0" allowfullscreen></iframe>';
				} 
				else if($row["video"]) {
					echo '<div class="query-media">
						<video id="video-query-full" controls>
						<source type="video/mp4" src="'.$row["video"].'">
						</video>
						</div>';								
				} 
				else {
					echo '<img src="'.$row["image"].'" class="blog-image" alt="'.$row["title"].'">';
				}
			}
			if($row["articleid"] > 1002) {
				echo '<br>';
			}
			echo '<p>'.format_output($row["body"]).'</p>';
			
			if($row["html"]) {
				echo $row["html"];
			}
			echo '</div>';
		}
	}
	echo '</div>';		
}

function display_recent_post($result) {
	echo '<h4 class="sidebar-post">RECENT POST</h4>
		<hr>
		<ul class="post">';
	
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			echo '<li>
				<div class="col-5">
					<a href="article.php?articleid='.$row["articleid"].'">
						<img src="'.$row["image"].'" class="post-image-small" alt="'.$row["title"].'">
					</a>
				</div>
				<div class="col-7 post-heading">
					<a href="article.php?articleid='.$row["articleid"].'">
						<h5>'.strtoupper(format_output($row["title"])).'</h5>
						<h6>'.$row["date"].'</h6>
					</a>
				</div>
				</li>';
		}
	}	
	echo '</ul>';
}

function display_article_summary($result, $class) {
	if ($result->num_rows > 0) {	
		while($row = $result->fetch_assoc()) {
			echo '<h4>'.strtoupper(format_output($row["title"])).'</h4>';
			if($row["articleid"] == 1001) {
				echo '<br>';
			}
			if($row["articleid"] > 1002) {
				echo '<h6><i>'.strtoupper($row["name"]).'   |   '.$row["date"].'</i></h6>
					  <img src="'.$row["image"].'" class="'.$class.'" alt="Emma Chiarelli"><br>';
				echo '<p>'.get_article_summary($row["body"]).'<br></p>
					<a href="article.php?articleid='.$row["articleid"].'" class="button">CONTINUE READING...</a>';
				if($class == "blog-image") {
					echo '<br><br><br><hr>';
				}					
			}
			else {
				echo '<p>'.get_article_summary($row["body"]).'<br></p>
					<a href="about.php" class="button">CONTINUE READING...</a>';
			}
			echo '<div class="clearfix"></div><br><br><br><br>';
		}
	}
}

function get_article_summary($string) {
	$paragraph = explode('\\r\\n', $string);

	echo '<p>'.str_replace("\\", "", $paragraph[0]).'</p><br>';
	echo '<p>'.str_replace("\\", "", $paragraph[1]).'</p><br>';
	echo '<p>'.str_replace("\\", "", $paragraph[2]).'</p><br>';
}

?>