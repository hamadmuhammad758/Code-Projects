<!DOCTYPE html>
<html>
	<head>
	</head>
	<body>
		<?php
			$nam=$_POST['txt_name'];
			$mail=$_POST['txt_mail'];
			//var_dump($nam);
			//var_dump($mail);
			$file=fopen("data.txt" , "a");
			$data[0]=$nam;
			$data[1]=$mail;
			$data=implode($data , "##");
			fputs($file , $data."\n");
			fclose($file);
			echo("Data saved");
		?>
	</body>
</html>