<!DOCTYPE html>
<html>
	<head>
	</head>
	<body>
		<?php
			$nam=$_GET['txt_name'];	
			//$mail=$_POST['txt_mail'];
			//var_dump($nam);
			//var_dump($mail);
			$file=fopen("data.txt" , "r");
			$file2=fopen("temp.txt" , "a");
			while($data=fgets($file)){
				$data_add=explode("##" , $data);
				if($data_add[0]==$nam){
					
				}
				else{
				fputs($file2 , $data);
				}
			}
			fclose($file);
			fclose($file2);
			unlink("data.txt");
			rename("temp.txt" , "data.txt");
			echo("your data has deleted");
		?>
	</body>
</html>