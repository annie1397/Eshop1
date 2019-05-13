<?php
include 'config.php';


if (isset($_POST['textdata'])) {
    $data = $_POST['textdata'];
    $fp = fopen('data.txt', 'a');
    fwrite($fp, $data);
    fclose($fp);
}

?>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="style.css" rel="stylesheet">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
          integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">

</head>


<body>
<div class="navbar">
    <a href="">Αρχική</a>
    <a href="index.php">Eshop</a>
    <div class="navbar-right">
        <a href="index.php"><i class="fas fa-sign-in-alt"> </i> Σύνδεση</a>
    </div>
    <a href="">Επικοινωνία</a>

</div>


</div>
<div class="container">

        <form method="post">
        <label for="u_name">Όνομα</label>
        <input type="text" id="textdata" placeholder="Πληκτρολόγησε το όνομά σου..">


        <label for="u_name">Επίθετο</label>
        <input type="text" id="textdata" placeholder="Πληκτρολόγησε το επίθετό σου..">

        <label for="u_email">Email</label>
        <input type="text" id="textdata" placeholder="Πληκτρολόγησε το e-mail σου..">

        <label for="subject">Σχόλια</label>

        <input type="text" id="textdata" name="textdata" placeholder="Γράψε κάτι..." style="height:200px">

        <input type="submit" name="submit">

        </form>
</div>


</body>
</html>