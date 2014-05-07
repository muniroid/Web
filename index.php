<!DOCTYPE html>
<html>
	<head>
		<title>MUNIROID</title>
	</head>
<body>
	<?php 
		$date = date("Y/m/d h:i:s A");
		echo "<h1>Welcome to my website.</h1> $date";
		echo "<br />". date_default_timezone_get();
		date_default_timezone_set("UTC");
		$date = date("Y/m/d h:i:s A");
		echo "<br />". date_default_timezone_get();
		echo "<br />". $date;
	?>
</body>
</html>
