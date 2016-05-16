<?php
include "koneksi/koneksi.php";


$username = $_POST['username'];
$pass     = $_POST['password'];

$login  = mysql_query("SELECT * FROM tb_login WHERE username = '$username' AND password = '$pass'");
$ketemu = mysql_num_rows($login);
$r		= mysql_fetch_array($login);

// Apabila username dan password ditemukan
if ($ketemu > 0){
	session_start();
	
	$_SESSION[username]		= $r[username];
	$_SESSION[password]     = $r[password];
	$_SESSION[nama]		= $r[nama];
	$_SESSION[level]		= $r[level];
	
	header('location:hal/index.php');
}
else{

	echo "<center>LOGIN GAGAL! <br> 
			Username atau Password Anda tidak benar.<br>
			Atau account Anda sedang diblokir.<br>";
			echo "<a href=index.php><b>ULANGI LAGI</b></a></center>";
}
?>