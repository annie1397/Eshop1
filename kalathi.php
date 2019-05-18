    <?php
    session_start();
    $product_ids=array();
   //session_destroy();


    switch($_GET["action"]) {
        case "empty":
            unset($_SESSION["shopping_cart"]);
            break;
    }
    if(filter_input(INPUT_POST,'prosthiki')){
        if(isset($_SESSION['shopping_cart'])){
            $count = count($_SESSION['shopping_cart']);


            $product_ids = array_column($_SESSION['shopping_cart'],'id');

            if(!in_array(filter_input(INPUT_GET,'id'),$product_ids)){
                $_SESSION['shopping_cart'][$count]=array
                (
                    'id' => filter_input(INPUT_GET,'id'),
                    'name' => filter_input(INPUT_POST,'name'),
                    'price' => filter_input(INPUT_POST,'price'),
                    'quantity' =>filter_input(INPUT_POST,'quantity')
                );


            }
            else{
                for($i=0; $i<count($product_ids); $i++){
                    if($product_ids[$i] == filter_input(INPUT_GET ,'id')){
                       $_SESSION['shopping_cart'][$i]['quantity'] += filter_input(INPUT_POST,'quantity');

                    }
                }
            }


        }
        else{
            $_SESSION['shopping_cart'][0]=array
            (
              'id' => filter_input(INPUT_GET,'id'),
              'name' => filter_input(INPUT_POST,'name'),
              'price' => filter_input(INPUT_POST,'price'),
              'quantity' =>filter_input(INPUT_POST,'quantity')
            );

        }

    }


    ?>



<html>
<head>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
          integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
       <link href="style.css" type="text/css" rel="stylesheet"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">


</head>
<body>
<div class="navbar">
    <a href=""><i class="fas fa-home"></i> Αρχική</a>
    <a href="kalathi.php"><i class="fas fa-shopping-bag"></i> Ηλεκτρονικό κατάστημα </a>
    <a href="contact.php"><i class="fas fa-id-card-alt"></i> Επικοινωνία</a>
    <div class="navbar-right">
        <a href="logout.php"><i class="fas fa-sign-out-alt"></i> Αποσύνδεση</a>
    </div>

</div>
            <div class="container1">
                <div style="clear:both"></div>
                <br />

                <div class="table-responsive">
                    <table class="table">
                        <tr><th colspan="5"><h3><i class="fas fa-shopping-cart"></i>Καλάθι αγορών</h3></th></tr>
                     <tr>
                         <th width="40%">Όνομα προιόντος</th>
                         <th width="10%">Ποσότητα</th>
                         <th width="20%">Τιμή</th>
                         <th width="15%">Σύνολο</th>
                         <th width="5%"><a id="btnEmpty" href="kalathi.php?action=empty">Άδειασμα </a></th>
                     </tr>
                        <?php
                        if(!empty($_SESSION['shopping_cart'])):
                        $total=0;
                        foreach ($_SESSION['shopping_cart'] as $key => $product):
                        ?>
                     <tr>
                         <td><?php echo $product['name']; ?> </td>
                         <td><?php echo $product['quantity']; ?> </td>
                         <td>€ <?php echo $product['price']; ?> </td>
                         <td>€<?php echo number_format($product['quantity']* $product['price'],2); ?></td>

                     </tr>
                        <?php
                            $total = $total + ($product['quantity'] * $product['price']);
                        endforeach;
                        ?>
                        <tr>
                            <td colspan="3" align="right">Σύνολο</td>
                            <td align="right">€ <?php echo ($total); ?></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td colspan="5">
                                <?php
                                if(isset($_SESSION['shopping_cart'])):
                                if(count($_SESSION['shopping_cart'])>0):
                                ?>
                                <a href="contact.php" class="button">Ολοκλήρωση παραγγελίας</a>
                                <?php
                                endif;
                                endif;
                                ?>
                            </td>
                        </tr>
                        <?php
                        endif;
                        ?>
                    </table>
                </div>

            <?php
            $connect =mysqli_connect('localhost','root','','lesson3');
            $query ='SELECT * FROM tblproduct ORDER by id ASC';
            $result= mysqli_query($connect,$query);

            if ($result){
                if(mysqli_num_rows($result)>0){
                    while($product=mysqli_fetch_assoc($result)){

                       ?>

                        <div class="picture">

                            <div class="col-sm-4 com-md-3">
                                <form method="post" action="kalathi.php?action=add&id=<?php echo $product['id']; ?>">
                                    <div class="cont">
                                        <img src="<?php echo $product['image']; ?>" alt="Avatar" class="image">
                                        <div class="overlay">
                                            <div class="text"><?php echo $product['name']; ?> <?php echo  ($product['details']); ?> </div>
                                        </div>
                                    </div>

                                    <div class="products">
                                        <td style="text-align:right;"><?php echo  ($product['price']); ?>€</td>
                                        <input type="text" name="quantity" class="form-control" value="1"/>
                                        <input type="hidden" name="name" value="<?php echo $product['name']; ?>"/>
                                        <input type="hidden" name="price" value="<?php echo $product['price']; ?>"/>
                                        <input type="submit" name="prosthiki" style="margin-top:2px; text-align: center"
                                               value="Προσθήκη στο καλάθι" />




                                    </div>
                            </div>
                            </form>

                        </div>


                        <?php
                    }
                }
            }


            ?>
            </div>
</body>
</html>




