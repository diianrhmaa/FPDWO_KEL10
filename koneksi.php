<?php
//deklarasi variabel untuk nama server, username, dan password
$servername ="localhost";
$username = "root";
$password = "";
$dbname = "fpdwo";

$conn = mysqli_connect($servername, $username, $password, $dbname) or die("Koneksi gagal dibangun"); 
?>