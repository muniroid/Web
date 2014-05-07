<!DOCTYPE html>
<html>
	<head>
		<title>MUNIROID</title>
	</head>
<body>
	<a href="/"> .. Back</a><br /><br />
	<?php 
		$date = date("Y/m/d h:i:s A");
		echo "$date - ". date_default_timezone_get();
		date_default_timezone_set("UTC");
		$date1 = date("Y/m/d h:i:s A");
		echo "<br /><br /> $date1 - ". date_default_timezone_get();
	?>
</body>
</html>
