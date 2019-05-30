<?php

/*
	Name: emmachiarelli_database.php
	Date: December 18, 2017
	Description: Database connection for emmachiarelli.com
	Author: Steve Chiarelli
	Author URL: https://www.chiatek.com
*/

function db_connect() {
	
	$servername = "";
	$username = "";
	$password = "";
	$dbname = "";	
	
	$result = new mysqli($servername, $username, $password, $dbname);
	if (!$result) {
		throw new Exception('Could not connect to database server');
	} 
	else {
		return $result;
	}
}

?>