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
		echo(date_default_timezone_set("UTC") . "<br />");
		echo(date("Y-d-mTG:i:sz", $date) . "<br />");
	?>
</body>
</html>
