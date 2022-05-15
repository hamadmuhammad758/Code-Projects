<!DOCTYPE html>
<html>
	<head>
	</head>
	<body>
		<?php
			$nam=$_POST['txt_nam'];	
			$mail=$_POST['txt_mail'];
			//var_dump($nam);
			//var_dump($mail);
			$file=fopen("data.txt" , "r");
			$file2=fopen("temp.txt" , "a");
			while($data=fgets($file)){
				$data_add=explode("##" , $data);
				if($data_add[0]==$nam){
					$data_ad[0]=$nam;
					$data_ad[1]=$mail;
					$data_ad2=implode($data_ad , "##");
					fputs($file2 , $data_ad2."\n");
				}
				else{
				fputs($file2 , $data);
				}
			}
			fclose($file);
			fclose($file2);
			unlink("data.txt");
			rename("temp.txt" , "data.txt");
		?>
	</body>
</html>