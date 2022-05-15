<!DOCTYPE html>
<html>
	<head>
	</head>
	<body>
		<?php
			$flage=0;
			$file=fopen("data.txt" , "r");
			$nam=$_POST['txt_name'];
			while($data=fgets($file)){
				$data=explode("##" , $data);
				if($data[0]==$nam){
					//echo($data[0]."</br>");
					//echo($data[1]);
					$flage=1;
					break;
				}
				else
					//echo("Not Found");
					$flage=0;
				
			}
			if($flage==1){
					echo($data[0]."</br>");
					echo($data[1]."</br>");
					echo("<a href='edit1.php?txt_name=".$nam."'>Edit</a>&nbsp;&nbsp;&nbsp;");
					echo("<a href='delete.php?txt_name=".$nam."'>Delete</a>");

				}
			else
				echo("Not Found");
			fclose($file);
		?>
	</body>
</html>
