<?php
include 'config.php';
if (isset($_POST["button"])) {

    $firstname = $_POST["firstname"];
    $email = $_POST["email"];
    $address = $_POST["address"];
    $city = $_POST["city"];
    $zip = $_POST["zip"];

    $insert = mysqli_query($conn, "INSERT INTO `lesson3`.`checkout` (`firstname`, `email`, `address`, `city`, `zip`) VALUES ('$firstname', '$email', '$address', '$city',  '$zip')");





}

?>

<html>
<head>
    <link href="style.css" type="text/css" rel="stylesheet"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta charset="UTF-8">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
          integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">

</head>
<body>
<div class="navbar">
    <a href="home.php"><i class="fas fa-home"></i> Αρχική</a>
    <a href="kalathi.php"><i class="fas fa-shopping-bag"></i> Ηλεκτρονικό κατάστημα </a>
    <a href="contact.php"><i class="fas fa-id-card-alt"></i> Επικοινωνία</a>
    <div class="navbar-right">
        <a href="index.php"><i class="fas fa-sign-in-alt"> </i> Σύνδεση</a>
        <a href="logout.php"><i class="fas fa-sign-out-alt"></i> Αποσύνδεση</a>
    </div>

</div>

<div class="row">
    <div class="col-75">
        <div class="container">
            <form action="checkout.php" method="post">

                <div class="row">
                    <div class="col-50">
                        <h3>Διεύθυνση χρέωσης</h3>
                        <label for="firstname"><i class="fa fa-user"></i> Ονοματεπώνυμο</label>
                        <input type="text" name="firstname" placeholder="π.χ Παπαδόπουλος Διαμαντής">

                        <label for="email"><i class="fa fa-envelope"></i> Email</label>
                        <input type="text"  name="email" placeholder="π.χ john@example.com">

                        <label for="address"><i class="fa fa-address-card-o"></i> Διεύθυνση </label>
                        <input type="text"  name="address" placeholder="π.χ Κολοκοτρώνη 84">

                        <label for="city"><i class="fa fa-institution"></i> Πόλη </label>
                        <input type="text"  name="city" placeholder="π.χ Καβάλα ">

                        <div class="row">

                            <div class="col-50">
                                <label for="zip">Ταχ.Κώδικας </label>
                                <input type="text" name="zip" placeholder="π.χ 65202">



                                <input type="submit"  class="button" title="Υποβολή" name="button" value="Υποβολή"></input>




                            </div>
                        </div>
                    </div>
</body>
</html>