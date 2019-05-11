<?php
?>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="style.css" rel="stylesheet">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">

</head>


<body>
<div class="navbar">
    <a href="">Αρχική</a>
    <a href="Eshop.php">Eshop</a>
    <div class="navbar-right">
        <a href="login.php"><i class="fas fa-sign-in-alt"> </i> Σύνδεση</a>
    </div>
    <a href="">Επικοινωνία</a>
    
</div>



</div>
<div class="container">
    <form action="/action_page.php">
        <label for="u_name">Όνομα</label>
        <input type="text" id="u_name" name="firstname" placeholder="Πληκτρολόγησε το όνομά σου..">

        <label for="u_name">Επίθετο</label>
        <input type="text" id="u_name" name="lastname" placeholder="Πληκτρολόγησε το επίθετό σου..">

        <label for="u_email">Email</label>
        <input type="text" id="u_email" name="firstname" placeholder="Πληκτρολόγησε το email σου..">

        <label for="country">Χώρα</label>
        <select id="country" name="country">
            <option value="Greece">Ελλάδα</option>
            <option value="Canada">Καναδάς</option>
            <option value="usa">ΗΠΑ</option>
        </select>

        <label for="subject">Σχόλια</label>
        <textarea id="subject" name="subject" placeholder="Γράψε κάτι..." style="height:200px"></textarea>

        <input type="submit" value="Υποβολή">
    </form>
</div>








</body>
</html>