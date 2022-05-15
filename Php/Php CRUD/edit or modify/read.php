<!DOCTYPE html>
<html>
		<?php
			 $file=file_get_contents("data.txt");
			
			if($file="")
			 echo("no data is there");
			 else
			 {
				$file=file_get_contents("data.txt");			
				$data=explode("\n" , $file);
				
			
				for($i=0 ; $i<(count($data)-1) ; $i++)
				{	
					$new=explode("##" ,$data[$i]);				
					echo($new[0]."<br>");                    
					echo($new[1]."<br>");
                    echo($new[2]."<br>");
					echo("<a href=edit.php?heading=$new[0]>delete</a>");
					echo('<br><br><br><br>');
				}
			}
		?>	
</html>