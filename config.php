<?php
$server = 'localhost';
$user = 'id9631426_admin';
$pass = 'admin123';
$db = 'id9631426_coffee';

$conn = mysqli_connect($server, $user, $pass) or die ("error");

$selectdb = mysqli_select_db($conn, $db) or die("error");


if (isset($_COOKIE["login"])) {
    $login = $_COOKIE["login"];
} else {
    $login = 0;
}


?>