<!DOCTYPE html>
<html>
	<head>
		<style type="text/css">
			#tbl{
				border:1px solid black;
				margin-top:50px;
				border-collapse:collapse;
			}
			#tbl td{
				border:1px solid black;
				padding:5px;
			}
		</style>
	</head>
	<body>
		<?php
			$sr_no=1;
			echo("<center>");
			echo("<table id='tbl'>");
				echo("<tr><th>Sr.No</th>");
				echo("<th>Name</th>");
				echo("<th>ID</th>");
				echo("</tr>");
				$file=fopen("data.txt" , "r");
				while($data=fgets($file)){
					$data=explode("##" , $data);
					echo("<tr><td>"  . $sr_no++ . "</td>");
					echo("<td>"  . $data[0] . "</td>");
					echo("<td>"  . $data[1] . "</td></tr>");
					
				
				}
			echo("</table>");
			echo("</center>");
			fclose($file);
		?>
	</body>
</html>
