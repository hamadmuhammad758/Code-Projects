
<!DOCTYPE html>
<html>
	<head>
		
	
	</head>
	<body>

		<?php
			 $match=$_GET['heading'];
			
			$file=file_get_contents("data.txt");
			 
			 $data=explode("\n",$file);
			 
			 for($i=0 ; $i<count($data) ; $i++)
			 {
					$new=explode("##",$data[$i]);
					if( !($new[0]==$match ))
					{
						echo('not match at:- '.$i);
						unset($data[$i]);					
					}
						
			 }
			 var_dump($data);
			 $data=array_values($data);
			 
			// var_dump($data);
			 $data=implode("\n",$data);
			// var_dump($data);
			file_put_contents("data.txt",$data);
			//header("location:read.php")
			?>
	</body>
</html>	