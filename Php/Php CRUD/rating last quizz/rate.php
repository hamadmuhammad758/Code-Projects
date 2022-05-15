<!DOCTYPE html>
<html>
	<head>
	</head>
	
	<body>
	
		<?php
		$val=$_GET['list1'];
		$nam=$_GET['image1'];
		var_dump($val);
		$file=file_get_contents("data.txt");
		$new=explode("\n",$file);
		for($i=0 ; $i<count($new) ; $i++)
		{
			$img=explode("##",$new[$i]);
			
			if($img[$i]==$nam)
			{
				echo("match");
				$img[2]=$val;
			}
		}
		var_dump($img);
		?>
	
	</body>
</html>