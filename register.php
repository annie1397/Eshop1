<?php

include 'config.php';
if ($login == 1) {
    echo "<meta http-equiv='refresh' content='0; url=profile.php'>";
} else {

    if (isset($_POST["button"])) {

        $u_name = $_POST["u_name"];
        $u_email = $_POST["u_email"];
        $u_pass = $_POST["u_pass"];
        if (empty($u_name) || empty($u_email) || empty($u_pass)) {
            echo "Please complete all data";
        } else {
            $insert = mysqli_query($conn, "INSERT INTO `lesson3`.`users` (`u_name`, `u_email`, `u_pass`) VALUES ('$u_name', '$u_email', '$u_pass')");
            echo "Succes";

        }

    }


    ?>


<?php } ?>


<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="style.css" rel="stylesheet">
    <meta charset="UTF-8">

</head>
<body>

<div class="form-wrapper">

    <form action="register.php" method="post">
        <div class="form-item">
            <input type="name" name="u_name" required="required" placeholder="Ονοματεπώνυμο" autofocus
                   required></input>
        </div>

        <div class="form-item">
            <input type="email" name="u_email" required="required" placeholder="Email" autofocus
                   required></input>

        </div>

        <div class="form-item">
            <input type="password" name="u_pass" required="required" placeholder="Κωδικός" required></input>
        </div>

        <div class="button-panel">
            <input type="submit" class="button" title="Log In" name="button" value="Sign up "></input>

        </div>

    </form>
    <div class="reminder">
        <p>Έτοιμο ? <a href="login.php">Σύνδεση </a></p>

    </div>


    <div class="footer"
    <p>&copy; COFFEE COMPANY 2019</p>
</div>


</body>
</html>
