<?php
session_start();

include 'config.php';


if (isset($_COOKIE["login"])) {
    $login = $_COOKIE["login"];
} else {
    $login = 0;
}
if ($login == 1) {
    echo "<meta http-equiv='refresh' content='0; url=profile.php'>";
} else {


    if (isset($_POST["button"])) {
        $u_email = $_POST['u_email'];
        $u_pass = $_POST['u_pass'];

        if (empty($u_email) || empty($u_pass)) {
            echo "Συμπλήρωσε όλα τα πεδία";
        } else {
            $selectfdb = mysqli_query($conn, "SELECT * FROM users WHERE u_email='$u_email' AND u_pass='$u_pass'");
            $row =mysqli_fetch_array($selectfdb);
            if ($row["u_email"] == $u_email && $row["u_pass"] == $u_pass) {
                setcookie('uid', $row["u_id"], time() + (3600 * 24));
                setcookie('login', 1, time() + (3600 * 24));
                echo "<meta http-equiv='refresh' content='0; url=profile.php'>";

            } else {
                echo "Λάθος κωδικός ή Email";
            }
        }
    }

    ?>


<?php }

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
    <a href="home.php"><i class="fas fa-home"></i>Αρχική</a>
    <a href="index.php"><i class="fas fa-shopping-bag"></i> Ηλεκτρονικό κατάστημα </a>
    <a href="contact.php"><i class="fas fa-id-card-alt"></i> Επικοινωνία</a>

</div>



<div class="form-wrapper">

    <form action="index.php" method="post">


        <div class="form-item">
            <input type="email" name="u_email" required="required" placeholder="Email" autofocus required></input>
        </div>

        <div class="form-item">
            <input type="password" name="u_pass" required="required" placeholder="Kωδικός" required></input>
        </div>

        <div class="button-panel">
            <input type="submit" class="button" title="Είσοδος" name="button" value="Εισοδος "></input>
        </div>
    </form>
    <div class="reminder">
        <a href="register.php">Εγγραφή τώρα !</a>

    </div>


    <div class="footer"
    <p>&copy; COFFEE COMPANY 2019</p>
</div>


</body>
</html>
