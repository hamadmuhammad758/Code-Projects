<!DOCTYPE html>
 <html>
	<head>
		

	</head>
	<body>
		<?php
			$e=Date("jS F Y h:i:sA",mktime(4,29,13,17,12,2013));
			
			$f=Date("jS F Y h:i:sA",strtotime("next monday"));
			echo $e.'<br>';
			echo $f;
		?>
	</body>
 </html>