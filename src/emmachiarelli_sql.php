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

function sql($query, $columnid = null, $event = 0) {
	
	switch($query) {
		case "news_sql" :
			$sql = "SELECT article.articleid, article.title, author.name, DATE_FORMAT(article.date,'%b %d %Y') AS date, article.body, article.video, article.image, article.youtube, article.html FROM article
				INNER JOIN author
				on article.authorid=author.authorid
				WHERE article.articleid >= 1003
				ORDER BY article.date DESC";
			break;
		case "latest_results_sql" :
			$sql = "SELECT meet.meetid, meet.date, meet.name, meet.image, result.vault, result.bars, result.beam, result.floor, result.aa FROM result
				INNER JOIN meet
				on result.meetid=meet.meetid
				ORDER BY meet.date DESC LIMIT 1";
			break;
		case "results_sql" :
			$sql = "SELECT meet.meetid, meet.date, meet.name, result.session, result.level, result.division, result.vault, result.bars, result.beam, result.floor, result.aa FROM result
				INNER JOIN meet
				on result.meetid=meet.meetid
				ORDER BY meet.date DESC";
			break;
		case "recentpost_sql" :
			$sql = "SELECT article.articleid, article.title, author.name, DATE_FORMAT(article.date,'%b %d %Y') AS date, article.body, article.video, article.image, article.youtube, article.html FROM article
				INNER JOIN author
				on article.authorid=author.authorid
				WHERE article.articleid >= 1003
				ORDER BY article.date DESC
				LIMIT ".$columnid."";
			break;
		case "upcomingmeets_sql" :
			$sql = "SELECT name, date, DATE_FORMAT(date,'%b %d %Y') AS dateformat, location from meet
				 WHERE date > now()
				 ORDER BY date ASC LIMIT ".$columnid."";
			break;
		case "latestvideos_sql" :
			$sql = "SELECT meet.meetid, meet.date, meet.name, video.videoid, video.eventid, video.url, video.description, video.poster from video
				INNER JOIN meet
				on video.meetid=meet.meetid
				ORDER BY meet.date DESC LIMIT ".$columnid."";
			break;
			
		case "article_sql" :
			$sql = "SELECT article.articleid, article.title, author.name, DATE_FORMAT(article.date,'%b %d %Y') AS date, article.body, article.video, article.image, article.youtube, article.html FROM article
				INNER JOIN author
				on article.authorid=author.authorid
				WHERE article.articleid = ".$columnid."";
			break;
		case "article_comments_sql" :
			$sql = "SELECT DATE_FORMAT(date,'%b %d %Y %h:%i %p') AS date, name, text FROM comments
				WHERE articleid = ".$columnid."";
			break;
		case "video_comments_sql" :
			$sql = "SELECT DATE_FORMAT(date,'%b %d %Y %h:%i %p') AS date, name, text FROM comments
				WHERE videoid = ".$columnid."";
			break;
		case "picture_comments_sql" :
			$sql = "SELECT DATE_FORMAT(date,'%b %d %Y %h:%i %p') AS date, name, text FROM comments
				WHERE pictureid = ".$columnid."";
			break;			
		case "contact_sql" :
			$sql = "SELECT gymnast.name AS gymnastname, team.name AS teamname, team.coach, team.city, team.email FROM team
				INNER JOIN gymnast
				on team.teamid=gymnast.teamid
				WHERE team.teamid=".$columnid."";
			break;
		case "meet_sql" :
			$sql = "SELECT meet.meetid, meet.date, meet.name, result.session, result.level, result.division, result.vault, result.bars, result.beam, result.floor, result.aa FROM result
				INNER JOIN meet
				on result.meetid=meet.meetid
				WHERE meet.meetid=".$columnid."";
			break;
		case "meet_search_sql" :
			$sql = "SELECT meet.meetid, meet.date, meet.name, result.session, result.level, result.division, result.vault, result.bars, result.beam, result.floor, result.aa FROM result
				INNER JOIN meet
				on result.meetid=meet.meetid
				WHERE meet.name LIKE '%".$columnid."%'";
			break;
		case "video_search_sql" :
			$sql = "SELECT meet.meetid, meet.name, video.videoid, video.eventid, video.url, video.description, video.poster from video
				INNER JOIN meet
				on video.meetid=meet.meetid
				WHERE meet.name LIKE '%".$columnid."%'";
			break;
		case "picture_search_sql" :
			$sql = "SELECT meet.meetid, meet.name, picture.pictureid, picture.eventid, picture.url, picture.description from picture
				INNER JOIN meet
				on picture.meetid=meet.meetid
				WHERE meet.name LIKE '%".$columnid."%'";
			break;			
		case "meet_videos_sql" :
			$sql = "SELECT meet.meetid, meet.name, video.videoid, video.eventid, video.url, video.description, video.poster from video
				INNER JOIN meet
				on video.meetid=meet.meetid
				WHERE meet.meetid=".$columnid."";
			break;
		case "meet_pictures_sql" :
			$sql = "SELECT meet.meetid, meet.name, picture.pictureid, picture.eventid, picture.url, picture.description from picture
				INNER JOIN meet
				on picture.meetid=meet.meetid
				WHERE meet.meetid=".$columnid."";
			break;
		case "videos_sql" :
			$sql = "SELECT meet.meetid, meet.name, video.videoid, video.eventid, video.url, video.description from video
				INNER JOIN meet
				on video.meetid=meet.meetid
				WHERE videoid=".$columnid."";
			break;
		case "pictures_sql" :
			$sql = "SELECT meet.meetid, meet.name, picture.pictureid, picture.eventid, picture.url, picture.description from picture
				INNER JOIN meet
				on picture.meetid=meet.meetid
				WHERE pictureid=".$columnid."";
			break;
			
		case "mtevt_videos_sql" :
			$sql = "SELECT meet.meetid, meet.name, video.videoid, video.eventid, video.url, video.description, video.poster from video
				INNER JOIN meet
				on video.meetid=meet.meetid
				WHERE meet.meetid=".$columnid."
				AND eventid=".$event."";
			break;
		case "mtevt_pictures_sql" :
			$sql = "SELECT meet.meetid, meet.name, picture.pictureid, picture.eventid, picture.url, picture.description from picture
				INNER JOIN meet
				on picture.meetid=meet.meetid
				WHERE meet.meetid=".$columnid."
				AND eventid=".$event."";
			break;
		default: 
			echo "Invalid SQL paramater.";
			return;
			break;			
	}
	
	return $sql;
}
					
?>