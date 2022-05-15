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
			
			if($img[0]==$nam)
			{
				echo("match");
				$img[1]=$val+$img[1];
			}
			$new[$i]=implode("##",$img);
			var_dump($new[$i]);
		}
		
			$data=implode("\n",$new);
			var_dump($data);
			file_put_contents("data.txt",$data);
			
		//header("location:lab1.php ");
		?>
	
	</body>
</html>