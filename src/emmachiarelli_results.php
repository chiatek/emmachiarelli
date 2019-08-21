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

function display_results($result, $filter) {
	if ($result->num_rows > 0) {
		echo '<div style="overflow-x:auto;">
			<table class="query-table">
				<tr>
					<th>Date</th>
					<th>Meet</th>
					<th>Session</th>
					<th>Level</th>
					<th>Division</th>
					<th>Vault</th>
					<th>Bars</th>
					<th>Beam</th>
					<th>Floor</th>
					<th>AA</th>
				</tr>';
		while($row = $result->fetch_assoc()) {
			echo '<tr>
					<td>'.$row["date"].'</td>';
				if($filter) {
					echo '<td><a href="http://www.mymeetscores.com/meet.pl?meetid='.$row["meetid"].'&gymnastid=10883257">'.$row["name"].'</a></td>';
				}
				else {
					echo '<td><a href="filter.php?meetid='.$row["meetid"].'&event=0">'.$row["name"].'</a></td>';
				}	
			echo '<td>'.$row["session"].'</td>
					<td>'.$row["level"].'</td>
					<td>'.$row["division"].'</td>';
					printf("<td>%.3f</td>", $row["vault"]);
					printf("<td>%.3f</td>", $row["bars"]);
					printf("<td>%.3f</td>", $row["beam"]);
					printf("<td>%.3f</td>", $row["floor"]);
					printf("<td>%.3f</td>", $row["aa"]);
			echo '</tr>';
		}
		echo '</table>
				</div>';
			if($filter) {
				echo '<p class="table-link"><a href="results.php">View All...</a>';
			}
			else {
				echo '<p class="table-note"><i>* Select a meet above to view video/pictures for each event.</i></p>';
			}
	} 
	else {
		echo 'No results found<br><br><br>'; 
	}		
}

function display_latest_results($result) {
	if ($result->num_rows > 0) {	
		while($row = $result->fetch_assoc()) {	
			echo '<table class="results-table">
				<tr>
					<td>
						<img src="'.$row["image"].'" class="eastern-image" alt="'.$row["name"].'">
					</td>
					<td>
						<table>
							<tr>
								<th id="event-title" colspan="2">'.$row["name"].'</th>
							</tr>
							<tr>
								<th>Vault</th>';
								printf("<td>%.3f</td>", $row["vault"]);
							echo '</tr>
							<tr>
								<th>Bars</th>';
								printf("<td>%.3f</td>", $row["bars"]);
							echo '</tr>
							<tr>
								<th>Beam</th>';
								printf("<td>%.3f</td>", $row["beam"]);
							echo '</tr>
							<tr>
								<th>Floor</th>';
								printf("<td>%.3f</td>", $row["floor"]);
							echo '</tr>
							<tr>
								<th>AA</th>';
								printf("<td>%.3f</td>", $row["aa"]);
							echo '</tr>
							<tr>
								<td colspan="2"><a href="results.php" class="button">VIEW ALL...</a></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>';
		}
	} 
	else {
		echo '<br><h3 class="error-text">The latest results have not been posted yet. Please check back later.</h3>';
	}		
}

function display_meets($result) {	
	echo '<img src="images/usa-gymnastics.png" class="usa-image-1" alt="USA Gymnastics">';
	echo '<img src="images/usa-gymnastics-2.jpg" class="usa-image-2" alt="USA Gymnastics">';
	if ($result->num_rows > 0) {	
		echo '<table class="events-table">
				<tr>
					<th>Date</th>
					<th>Meet</th>
					<th>Location</th>
				</tr>';
		while($row = $result->fetch_assoc()) {	
			echo '<tr>
					<td>'.$row["dateformat"].'</td>
					<td>'.$row["name"].'</td>
					<td>'.$row["location"].'</td>
				</tr>';
		}
		echo '<tr>
					<td colspan="3"><a href="article.php?articleid=1003" class="button">VIEW ALL...</a></td>
				</tr>
			</table>';
	} 
	else {
		echo '<br><br><br><br><br><br><br><br>
			<h3 class="error-text">The competitive caledar has not been posted yet. Please check back later.</h3>';
	}	
}

function display_filter($result) {
?>
	<h4>FILTER</h4>
	<hr>
	<form class="form" action="filter.php" method="GET">
	<h5 class="filter-title">MEET:</h5>
	<select class="select" name="meetid">
<?php
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) { ?>
			<option value="<?php echo $row["meetid"]; ?>"><?php echo $row["name"]; ?></option>
<?php
		}
	}
?>	
	</select>
		<br><br>
		<h5 class="filter-title">EVENT MEDIA:</h5>
		<ul class="radio">
			<li><input type="radio" name="event" value="0" checked> All</li>
			<li><input type="radio" name="event" value="1"> Vault</li>
			<li><input type="radio" name="event" value="2"> Bars</li>
			<li><input type="radio" name="event" value="3"> Beam</li>
			<li><input type="radio" name="event" value="4"> Floor</li>
		</ul>
		<input class="button" type="submit" value="GO">
	</form>	
<?php
}	

?>