<?php


?>

<html>
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="style.css" rel="stylesheet">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
          integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">


</head>
<body >


<div class="navbar">
    <a href="">Αρχική</a>
    <a href="Eshop.php">Eshop</a>
    <a href="contact.php">Επικοινωνία</a>
    <div class="navbar-right">
        <a href="login.php"><i class="fas fa-sign-in-alt"> </i> Σύνδεση</a>
    </div>

</div>


<div class="product-row btn-open-cart-popup  "
     data-characteristics-url="https://www.coffeeisland.gr/catalog/product_popup/891/1" id="cart-popup-for-891"
     data-product-id="891" data-popup-title="Espresso Double">


    <i class="fa fa-plus-square-o cart-plus"></i>
</div>


<div class="h1">
    <h1> Ποικιλίες Καφέ </h1>
</div>


<div id="myModal" class="modal">
    <span class="close">&times;</span>
    <img class="modal-content" id="img01">
    <div id="caption"></div>
</div>

<div id="myBtnContainer" style="text-align: center">
    <button class="btn active" onclick="filterSelection('all')">Εμφάνισε ολα τα προϊόντα</button>
    <button class="btn" onclick="filterSelection('machines')"> Μηχανές</button>
    <button class="btn" onclick="filterSelection('coffee')"> Καφέδες</button>

</div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/AITHIOPIA(2).png" alt="Snow">
                <div class="desc">23,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/AITHIOPIA.png" alt="Snow">
                <div class="desc">20,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/BRAVO.png" alt="Snow">
                <div class="desc">15,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/BRISTOT.png" alt="Snow">
                <div class="desc">15,00€</div>
            </div>
        </div>
    </div>

    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/BUONDI.png" alt="Snow">
                <div class="desc">15,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/CAGLIARI(2).png" alt="Snow">
                <div class="desc">18,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/CAGLIARI.png" alt="Snow">
                <div class="desc">30,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/CAGLIARI(3).png" alt="Snow">
                <div class="desc">17,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/COSMAI(2).png" alt="Snow">
                <div class="desc">32,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/COSMAI.png" alt="Snow">
                <div class="desc">26,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/COVIM(3).png" alt="Snow">
                <div class="desc">20,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/COSMAI(3).png" alt="Snow">
                <div class="desc">19,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/COVIM(2).png" alt="Snow">
                <div class="desc">21,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/COVIM.png" alt="Snow">
                <div class="desc">23,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/DA%20VINCI.png" alt="Snow">
                <div class="desc">16,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/DA%20VINCI.png" alt="Snow">
                <div class="desc">30,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/DANESI.png" alt="Snow">
                <div class="desc">22,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/DANESI(2).png" alt="Snow">
                <div class="desc">23,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/DE%20ROCCIS(2).png" alt="Snow">
                <div class="desc">24,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/DE%20ROCCIS(3).png" alt="Snow">
                <div class="desc">22,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/DE%20ROCCIS.png" alt="Snow">
                <div class="desc">21,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/DEL%20FARO.png" alt="Snow">
                <div class="desc">20,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/EDUSCHO.png" alt="Snow">
                <div class="desc">19,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/EDUSCHO(2).png" alt="Snow">
                <div class="desc">18,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/GARIBALDI.png" alt="Snow">
                <div class="desc">22,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/ICS(2).png" alt="Snow">
                <div class="desc">25,00€</div>
            </div>
        </div>

    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/ICS.png" alt="Snow">
                <div class="desc">26,00€</div>
            </div>
        </div>
    </div>

    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/Ipanema.png" alt="Snow">
                <div class="desc">22,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/Jacobs.png" alt="Snow">
                <div class="desc">29,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/Julius%20Meinl.png" alt="Snow">
                <div class="desc">25,00€</div>
            </div>
        </div>

    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/KANABISSIMO.png" alt="Snow">
                <div class="desc">12,00€</div>
            </div>
        </div>
    </div>

    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/Lamborghini.png" alt="Snow">
                <div class="desc">50,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/Lavazza%20Blue.png" alt="Snow">
                <div class="desc">26,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/Lollo.png" alt="Snow">
                <div class="desc">27,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/Lucaffe.png" alt="Snow">
                <div class="desc">20,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/Melitta.png" alt="Snow">
                <div class="desc">23,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/Molinari.png" alt="Snow">
                <div class="desc">27,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/Monbana.png" alt="Snow">
                <div class="desc">16,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/Motta.png" alt="Snow">
                <div class="desc">14,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/Natreen.png" alt="Snow">
                <div class="desc">18,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/Nescafe.png" alt="Snow">
                <div class="desc">22,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/New%20York.png" alt="Snow">
                <div class="desc">28,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/Paluani.png" alt="Snow">
                <div class="desc">20,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/Passalacqua.png" alt="Snow">
                <div class="desc">24,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/Pelican%20Rouge.png" alt="Snow">
                <div class="desc">25,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/Portioli.png" alt="Snow">
                <div class="desc">20,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/Puro.png" alt="Snow">
                <div class="desc">22,50€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/Ristora.png" alt="Snow">
                <div class="desc">29,80€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/Sandemetrio.png" alt="Snow">
                <div class="desc">20,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/Simat.png" alt="Snow">
                <div class="desc">27,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/Utopia.png" alt="Snow">
                <div class="desc">21,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/Vandino.png" alt="Snow">
                <div class="desc">22,60€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/Manaresi.jpg" alt="Snow">
                <div class="desc">27,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv coffee">
                <img id="myImg" src="img/Mondocaffe.jpg" alt="Snow">
                <div class="desc">13,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv machines">
                <img id="myImg" src="img/m1.png" alt="Snow">
                <div class="desc">66,60€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv machines">
                <img id="myImg" src="img/m2.png" alt="Snow">
                <div class="desc">147,99€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv machines">
                <img id="myImg" src="img/m5.png" alt="Snow">
                <div class="desc">365,99€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv machines">
                <img id="myImg" src="img/victoria.png" alt="Snow">
                <div class="desc">14.000€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv machines">
                <img id="myImg" src="img/zic.png" alt="Snow">
                <div class="desc">2.284,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv machines">
                <img id="myImg" src="img/m3.png" alt="Snow">
                <div class="desc">195,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv machines">
                <img id="myImg" src="img/m6.png" alt="Snow">
                <div class="desc">95,85€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv machines">
                <img id="myImg" src="img/m11.png" alt="Snow">
                <div class="desc">64,35€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv machines">
                <img id="myImg" src="img/m15.png" alt="Snow">
                <div class="desc">249,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv machines">
                <img id="myImg" src="img/m7.png" alt="Snow">
                <div class="desc">279,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv machines">
                <img id="myImg" src="img/cit.png" alt="Snow">
                <div class="desc">179,00€</div>
            </div>
        </div>
    </div>
    <div class="container1">
        <div class="picture">
            <div class="filterDiv machines">
                <img id="myImg" src="img/citm.png" alt="Snow">
                <div class="desc">161,00€</div>
            </div>
        </div>
    </div>
    <script>

        var modal = document.getElementById('myModal');
        var img = document.getElementById('myImg');
        var modalImg = document.getElementById("img01");
        var captionText = document.getElementById("caption");
        img.onclick = function () {
            modal.style.display = "block";
            modalImg.src = this.src;
            captionText.innerHTML = this.alt;
        }

        var span = document.getElementsByClassName("close")[0];


        span.onclick = function () {
            modal.style.display = "none";
        }

    </script>


<script>
    filterSelection("all")
    function filterSelection(c) {
        var x, i;
        x = document.getElementsByClassName("filterDiv");
        if (c == "all") c = "";
        for (i = 0; i < x.length; i++) {
            w3RemoveClass(x[i], "show");
            if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "show");
        }
    }

    function w3AddClass(element, name) {
        var i, arr1, arr2;
        arr1 = element.className.split(" ");
        arr2 = name.split(" ");
        for (i = 0; i < arr2.length; i++) {
            if (arr1.indexOf(arr2[i]) == -1) {element.className += " " + arr2[i];}
        }
    }

    function w3RemoveClass(element, name) {
        var i, arr1, arr2;
        arr1 = element.className.split(" ");
        arr2 = name.split(" ");
        for (i = 0; i < arr2.length; i++) {
            while (arr1.indexOf(arr2[i]) > -1) {
                arr1.splice(arr1.indexOf(arr2[i]), 1);
            }
        }
        element.className = arr1.join(" ");
    }

    // Add active class to the current button (highlight it)
    var btnContainer = document.getElementById("myBtnContainer");
    var btns = btnContainer.getElementsByClassName("btn");
    for (var i = 0; i < btns.length; i++) {
        btns[i].addEventListener("click", function(){
            var current = document.getElementsByClassName("active");
            current[0].className = current[0].className.replace(" active", "");
            this.className += " active";
        });
    }
</script>





</body>
</html>
