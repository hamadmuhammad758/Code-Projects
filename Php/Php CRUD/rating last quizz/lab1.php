<!DOCTYPE html>
<html>
	<head>
	<style type="text/css">
		img{
			width:30%;
			height:50%;
			display:inline-block;
		}
	</style>
	
		<script type="text/javascript">
		
			function validate()
				{	
				var a=document.getElementById('s_1').value;
				if(a==22)
				{
					alert("must select");
				return false;
				}
				}
				
				
			function validate1()
				{	
				var a=document.getElementById('s_2').value;
				if(a==22)
				{
					alert("must select");
				return false;
				}
				}
		</script>
	
	</head>
	
	
	<body>
		
		<form action="rate1.php" method="get" />
			<img src="1.jpg"/>
			
			<h1>Rating</h1>
			
			<span>
			<?php				
			$file=file_get_contents("data.txt");
			$new=explode("\n",$file);
			
			$img=explode("##",$new[0]);
			echo($img[1]);
			
			 ?>
			 
			</span>
		
			
			<input type="text"  value="1.jpg"  name="image1" style="display:none;" />
			
			<select id="s_1"  name="list1">
				<option value="22">select</option>
				<option value="5">5</option>
				<option value="4">4</option>
				<option value="2">2</option>
			</select>
			<input type="submit"  value="rate"  onclick="return validate();" />
		</form>
	

	
	
	
			<form action="rate1.php" method="get" />
			<img src="1.jpg"/>
			
			<h1>Rating</h1>
			
			<span>
			<?php				
			$file=file_get_contents("data.txt");
			$new=explode("\n",$file);
			
			$img=explode("##",$new[1]);
			echo($img[1]);
			
			 ?>
			 
			</span>
		
			
			<input type="text"  value="2.jpg"  name="image1" style="display:none;" />
			
			<select id="s_2"  name="list1">
				<option value="22">select</option>
				<option value="5">5</option>
				<option value="4">4</option>
				<option value="2">2</option>
			</select>
			<input type="submit"  value="rate"  onclick="return validate1();" />
		</form>
	
	
	</body>
	<?php
	?>
</html>