<!DOCTYPE html>
<html>
	<head>
		<title>MUNIROID</title>
	</head>
<body>
	<?php 
		$date = date("Y/m/d h:i:s A");
		echo "<h1>Welcome to my website.</h1> $date";
		echo ": ". date_default_timezone_get();
		date_default_timezone_set("UTC");
		$date1 = date("Y/m/d h:i:s A");
		echo "<br /><br />". date_default_timezone_get();
		echo ": ". $date1;
	?>
</body>
</html>
