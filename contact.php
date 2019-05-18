<?php
include 'config.php';


if (isset($_POST["button"])) {

    $firstname = $_POST["firstname"];
    $lastname = $_POST["lastname"];
    $email = $_POST["email"];
    $info=$_POST["info"];

        $insert = mysqli_query($conn, "INSERT INTO `lesson3`.`users_info` (`firstname`, `lastname`, `email`, `info`) VALUES ('$firstname', '$lastname', '$email', '$info')");



}


?>






<html>

<head>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
          integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link href="style.css" type="text/css" rel="stylesheet"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">

</head>


<body>
<div class="navbar">
    <a href="home.php"><i class="fas fa-home"></i>Αρχική</a>
    <a href="kalathi.php"><i class="fas fa-shopping-bag"></i> Ηλεκτρονικό κατάστημα </a>
    <a href="contact.php"><i class="fas fa-id-card-alt"></i> Επικοινωνία</a>
    <div class="navbar-right">
        <a href="index.php"><i class="fas fa-sign-in-alt"> </i> Σύνδεση</a>
        <a href="logout.php"><i class="fas fa-sign-out-alt"></i> Αποσύνδεση</a>
    </div>


</div>
<div class="container">

    <form  action ="contact.php" method="post">
        <label for="firstname">Όνομα</label>
        <input type="text" name="firstname" placeholder="Πληκτρολόγησε το όνομά σου..">


        <label for="lastname">Επίθετο</label>
        <input type="text" name="lastname" placeholder="Πληκτρολόγησε το επίθετό σου..">

        <label for="email">Email</label>
        <input type="text" name="email" placeholder="Πληκτρολόγησε το e-mail σου..">

        <label for="info">Σχόλια</label>

        <input type="text"  name="info" placeholder="Γράψε κάτι..." style="height:200px">

        <input type="submit" class="button" title="Υποβολή" name="button" value="Υποβολή"></input>

    </form>
</div>




</body>
</html>