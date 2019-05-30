<?php

/*
	Name: emmachiarelli_contact.php
	Date: December 18, 2017
	Description: Main content for emmachiarelli.com
	Author: Steve Chiarelli
	Author URL: https://www.chiatek.com
*/

function display_contact($result) {
												
	echo '<h3 class="contact-title">CONTACT</h3><br>
		<div class="contact-info">';
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			echo '<h4>'.$row["gymnastname"].'</h4>
				<h4>'.$row["teamname"].' - '.$row["city"].'<br>
				Coach: '.$row["coach"].' - '.$row["email"].'</h4><br>';
		}
	}
	echo '</div>';
}

?>