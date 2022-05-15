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
		</script>
	
	</head>
	
	
	<body>
		
		<form action="rate.php" method="get" />
			<img src="1.jpg"/>
			<h1>Rating</h1>
			<span>
			<?php				
			$file=file_get_contents("data.txt");
			$new=explode("\n",$file);
			for($i=0 ; $i<count($new) ; $i++)
			{
				$img=explode("##",$new[$i]);
			
			var_dump($img);
			}
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
	
	<img src="2.jpg" />
		<h1>rating</h1>
		<span>15</span>
		
		<form action="rate.php" method="get" />
			
			
			<input type="text"  value="2.jpg"  name="image2" style="display:none;" />
			<select name="list2">
				
				<option value="22">select</option>
				<option value="5" >5</option>
				<option value="4">4</option>
				<option value="2">2</option>
			</select>
			
			<input type="submit"  value="rate"  onclick="return validate();" />
		</form>
	
		
		<form action="rate.php" method="get" />
			
		<img src="3.jpg"  name="img3.jpg"/>
		<h1>rating</h1>
		<span>12</span>
		
			<input type="text"  value="3.jpg"  name="image3" style="display:none;" />
			<select  name="list3">
				
				<option value="22">select</option>
				<option value="5">5</option>
				<option value="4">4</option>
				<option value="2">2</option>
			</select>
			
			<input type="submit" value="rate"  onclick="validate();"/>
		</form>
	
		<img src="4.jpg" />
		<h1>rating</h1>
		<span>10</span>
		
		<form action="rate.php" method="get" />
			
			<input type="text"  value="4.jpg"  name="image4" style="display:none;" />
			<select  name="list4">
				
				<option value="22" >select</option>
				<option value="5">5</option>
				<option value="4">4</option>
				<option value="2">2</option>
			</select>
			<input type="submit"  value="rate"  onclick="return validate();"/>
		</form>
	
	
	
	</body>
	<?php
	?>
</html>