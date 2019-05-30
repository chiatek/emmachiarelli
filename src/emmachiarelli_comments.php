<?php

/*
	Name: emmachiarelli_comments.php
	Date: December 18, 2017
	Description: Main content for emmachiarelli.com
	Author: Steve Chiarelli
	Author URL: https://www.chiatek.com
*/

function display_comments($result) {
	
	echo '<div class="comments">';
	
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {	
			echo '<ul class="comment-list">
				<li>
				<div class="col-2 comment-row-1">
					<img src="images/user-av.jpg" class="comment-image-small">
				</div>
				<div class="col-10 comment-row-2">
					<h5>'.strtoupper($row["name"]).'</h5>
					<h6>'.$row["date"].'</<h6>
				<p class="comment-text">'.format_output($row["text"]).'</p><br>
				</div>
				</li>
				</ul>';
		}
	}		
}

function display_comments_form($columnid, $class) {

	echo '<form class="form" name="commentform" action="'.htmlspecialchars($_SERVER["PHP_SELF"]).'" method="POST">
		<div class="'.$class.'-input">
			<input type="text" name="name" id="name" placeholder="Name" required>
			<input type="email" name="email" id="email" placeholder="Email" required>
		</div>
		<div class="'.$class.'-textarea">
			<textarea name="comment" id="comment" placeholder="Comment" required></textarea>
		</div>
		<div class="submit '.$class.'-submit">';
	if (($columnid >= 3000) && ($columnid < 4000)) { 
		echo '<input type="text" name="videoid" id="videoid" value="'.$columnid.'" style="display: none;">';
	}
	else if (($columnid >= 4000) && ($columnid < 5000)) {
		echo '<input type="text" name="pictureid" id="pictureid" value="'.$columnid.'" style="display: none;">';
	}
	else {
		echo '<input type="text" name="articleid" id="articleid" value="'.$columnid.'" style="display: none;">';
	}
	echo '<input type="submit" value="Send">
		</div>
	</form>';						
}

function validate_form($input) {
	
	if (empty($input["name"])) {	  
		$error['nameErr'] = "* Name is required";
	} 
	else {
		$name = true;
	}
	  
	if (empty($input["email"])) {
		$error['emailErr'] = "* Email is required";
	} 
	else {
		if (!filter_var($input["email"], FILTER_VALIDATE_EMAIL)) {
			$error['emailErr'] = "* Invalid email format"; 
		}
		else {
			$email = true;
		}
	}

	if (empty($input["comment"])) {
		$error['commentErr'] = "* Comment is required";
	}
	else {
		$comment = true;
	}
	
	if ($name && $email && $comment) {
		return;
	}
	else {	
		return $error;
	}
}

function set_comments($input, $conn) {
	
	$sql = "INSERT INTO comments (articleid, date, name, email, text, videoid, pictureid)
	VALUES (?, ?, ?, ?, ?, ?, ?)";
	
	$time = date("Y-m-d H:i:s");
	
	$name = test_input($input["name"], $conn);
	$email = test_input($input["email"], $conn);
	$comment = test_input($input["comment"], $conn);
	
	if (!empty($input["articleid"])) {
		$articleid = $input["articleid"];
	}
	else {
		$articleid = null;
	}
	
	if (!empty($input["videoid"])) {
		$videoid = $input["videoid"];
	}
	else {
		$videoid = null;
	}	
	
	if (!empty($input["pictureid"])) {
		$pictureid = $input["pictureid"];
	}
	else {
		$pictureid = null;
	}	
	
	if($stmt = $conn->prepare($sql)) {
		$stmt->bind_param("issssii", $articleid, $time, $name, $email, $comment, $videoid, $pictureid);
		$stmt->execute();
		//printf("Error: %s.\n", $stmt->error);
		$stmt->close();	
	}
	else {
		echo "Error: ".$sql."<br>" . $conn->error;
	}	
}

function test_input($data, $conn) {
	$data = trim($data);
	$data = stripslashes($data);
	$data = htmlspecialchars($data);
	$data = mysqli_real_escape_string($conn, $data);
	return $data;
}

function format_output($data) {
	$data = str_replace("\\r\\n", "<br>", $data);
	$data = str_replace("\\", "", $data);
	return $data;
}

?>