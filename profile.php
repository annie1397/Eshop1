<html>
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="style.css" rel="stylesheet">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">




</head>
<body>
<div class="navbar">
    <a href="">Αρχική</a>
    <a href="eshop.php">Eshop</a>
    <a href="contact.php">Επικοινωνία</a>
    <div class="navbar-right">
    <a href="logout.php"><i class="fas fa-sign-out-alt"></i> Αποσύνδεση</a>
    </div>

</div>



<div class="footer"
<p>&copy; COFFEE COMPANY 2019</p>
</div>


</body>
</html>
<?php
include 'config.php';
if (isset($_COOKIE["login"])) {
    $login = $_COOKIE["login"];
} else {
    $login = 0;
}
if ($login == 0) {
    echo "<meta http-equiv='refresh' content='0; url=eshop.php'>";

} else {
    $u_id = $_COOKIE['uid'];
    $getinfo = mysqli_query($conn, "SELECT * FROM users WHERE u_id=$u_id");
    $arr = mysqli_fetch_array($getinfo);


    ?>





<?php } ?>
