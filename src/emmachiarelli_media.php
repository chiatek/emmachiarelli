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