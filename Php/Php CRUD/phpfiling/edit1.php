<!DOCTYPE html>
<html>
	<head>
	</head>
	<body>
		<?php
			$nam=$_GET['txt_name'];
			//var_dump($nam);
			$file=fopen("data.txt" , "r");
			while($data=fgets($file)){
				$data=explode("##" , $data);
				if($data[0]==$nam){
					echo("<form action='update.php' method='post'>");
						echo("Name : <input type='text' name='txt_nam' value="."'".$data[0]."'"."><br/><br/>");
						echo("Id : <input type='text' name='txt_mail' value="."'".$data[1]."'".">");

						echo("<input type='submit' />");
					echo("</form>");
				}
			}
			fclose($file);
					
		?>
	</body>
</html>