<!DOCTYPE html>
<html>
	<head>
	</head>
	<body>
				<?php
							$tname=$_GET['tname'];
							$pname=$_GET['pname'];
							$type=$_GET['type'];
							
							$old=file_get_contents("data.txt");
						
							$new[0]=$tname;
							$new[1]=$pname;
							$new[2]=$type;
							
							$ne=implode("##",$new); 						
							
								file_put_contents("data.txt",$ne."\n".$old);								
															
							?>
	</body>
</html>