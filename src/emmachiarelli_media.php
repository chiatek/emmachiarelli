<?php

/*
	Name: emmachiarelli_media.php
	Date: December 18, 2017
	Description: Main content for emmachiarelli.com
	Author: Steve Chiarelli
	Author URL: https://www.chiatek.com
*/

function display_media_results($result, $media) {
	if ($result->num_rows > 0) {
		echo '<div class="image-row">';
		while($row = $result->fetch_assoc()) {
			echo '<div class="image-column">';
			if($media == "videos") {
				echo '<a href="media.php?videoid='.$row["videoid"].'">
					 <img class="image-query" src="media\poster\\'.$row["poster"].'"></a>
					 <br><h5>'.$row["name"].' - '.$row["description"].'</h5>';	
			}
			else {
				echo '<a href="media.php?pictureid='.$row["pictureid"].'">
					<img class="image-query" src="'.$row["url"].'"></a> 
					<br><h5>'.$row["name"].' - '.$row["description"].'</h5>';
			}
			echo '</div>';
		}
		echo '</div>';
	}
	else {
		echo 'No '.$media.' have been posted for this meet.<br><br><br>';
	}		
}

function display_media($result, $media) {
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			echo '<div class="query-media">';
			if($media == "videos") {
				echo '<video id="video-query-full" controls>
					<source type="video/mp4" src="'.$row["url"].'">
					</video>';
			}
			else {
				echo '<img class="image-query-full" src="'.$row["url"].'">';
			}
			echo '</div>
				<h4>'.$row["name"].' - '.$row["description"].'</h4>';
		}
	}		
}

function display_latest_videos($result) {
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			echo '<div class="post-media">
				<a href="media.php?videoid='.$row["videoid"].'">
					<img class="image-query" src="media\poster\\'.$row["poster"].'">												
					<h5>'.$row["name"].' - '.$row["description"].'</h5>
				</a>
				</div>';
			$meetid = $row["meetid"];
		}
	} 
	echo '<a href="filter.php?meetid='.$meetid.'&event=0" class="button">VIEW ALL...</a>';
}

?>