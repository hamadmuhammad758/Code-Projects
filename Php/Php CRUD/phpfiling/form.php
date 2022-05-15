<!DOCTYPE html>
<html>
	<head>
	</head>
	<body>
		<form action="add.php" method="post">
			<label for="txt_name" style="font-weight:bold;">Name :</label>
			<input type="text" name="txt_name" id="txt_name" /><br /><br /> 
			<label for="txt_mail" style="font-weight:bold;">ID :</label> 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="txt_mail" id="txt_mail"/><br /><br />
			<input type="submit" value="ADD DATA"/> 
			<input type="reset" /> 
		</form>
		<h1><a href="read.php">Read the File</a></h1><br/><br/><br/>
		<form action="search.php" method="post">
			Name : <input type="text" name="txt_name" /><br /><br /> 
			<input type="submit" value="SEARCH"/> 
			<input type="reset" /> 
		</form>
	</body>
</html>
