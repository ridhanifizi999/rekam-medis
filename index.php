<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>



	<link href="css/footer.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/home.css" rel="stylesheet" type="text/css" media="all" />
    
            
</head>

<body class="home">
    <div id="bg">
	<div id="page">
	
	
	<?php
	include "header.php";
	?>
	<hr><br/>
	
    <div id="badan">

	<br/><br/>
	<center><img src="images/login-form.png"/></center>
	<hr>
	<br/>
	<center>
	<form method="POST" action="cek_login.php">

		<table border="0" cellspacing="4" cellpadding="0" class="tabel_reg">
		  <tr>
			<td width="120">Username</td>
			<td><input name="username" type="text" size="40" value=""> <em>harus diisi</em></td>
		  </tr>
		  <tr>
			<td>Password</td>
			<td><input name="password" type="password" size="40" value=""> <em>harus diisi</em></td>
		  </tr>
		  <tr>
			  <tr>
			<td></td>
			<td><input name="login" type="submit" value="Login"> <input name="batal" type="reset" value="Batal"></td>
		  </tr>
		</table>
		</form>
		</center>
		
		
    </div><br/>
    <hr><center>
		<?php
		include "footer.php";
		?>
		</center>
<hr>
    </div></div>
</body>
</html>
