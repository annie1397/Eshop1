<?php

include 'config.php';



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
            $row = mysqli_fetch_array($selectfdb);
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


<?php } ?>


<html>
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="style.css" rel="stylesheet">
    <meta charset="UTF-8">

</head>
<body>
<div class="navbar">
    <a href="">Αρχική</a>
    <a href="Eshop.php">Eshop</a>
    <a href="">Ο καφές μας</a>
    <a href="">Επικοινωνία</a>




</div>


<div class="form-wrapper">

    <form action="login.php" method="post">


        <div class="form-item">
            <input type="email" name="u_email" required="required" placeholder="Πληκτρολόγησε το Email" autofocus
                   required></input>

        </div>

        <div class="form-item">
            <input type="password" name="u_pass" required="required" placeholder="Πληκτρολόγησε τον κωδικό" required></input>
        </div>

        <div class="button-panel">
            <input type="submit" class="button" title="Log In" name="button" value="Sign in "></input>
        </div>
    </form>
    <div class="reminder">
        <p>Δεν έχεις λογαριασμό? <a href="register.php">Εγγραφή τώρα !</a></p>

    </div>


    <footer>
        <p>&copy; COFFE COMPANY 2019
        <p>
    </footer>


</body>
</html>