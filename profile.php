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
    <a href="">Eshop</a>
    <a href="">Ο καφές μας</a>
    <a href="">Επικοινωνία</a>
    <div class="navbar-right">
    <a href="#Shop"><i class="fa fa-shopping-cart"></i>  Καλάθι αγορών</a>
    <a href="logout.php"><i class="fas fa-sign-out-alt"></i> Αποσύνδεση</a>
    </div>

</div>

<div class="product-row btn-open-cart-popup  " data-characteristics-url="https://www.coffeeisland.gr/catalog/product_popup/891/1" id="cart-popup-for-891" data-product-id="891" data-popup-title="Espresso Double">



        <i class="fa fa-plus-square-o cart-plus"></i>
    </div>

<div class="footer"
<p>&copy; COFFEE COMPANY 2019</p>
</div>


</body>
</html>
<?php
include 'config.php';
if ($login == 0) {
    echo "<meta http-equiv='refresh' content='0; url=login.php'>";

} else {
    $u_id = $_COOKIE['uid'];
    $getinfo = mysqli_query($conn, "SELECT * FROM users WHERE u_id=$u_id");
    $arr = mysqli_fetch_array($getinfo);


    ?>


    <span>Name : <?php echo $arr['u_name']; ?></span><br>
    <span>Email : <?php echo $arr['u_email']; ?></span><br>
    <span>User ID  : <?php echo $arr['u_id']; ?></span><br>


<?php } ?>
