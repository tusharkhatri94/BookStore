<?php
    require('mysqli_connect.php');

    if(!isset($_COOKIE['book'])) {
        echo "Cookie named '" . $_COOKIE['book'] . "' is not set!";
    } else {
        $q1 = 'SELECT * FROM books b JOIN authors a ON b.authorID = a.authorID WHERE bookID = '.$_COOKIE['book'];
        $r1 = @mysqli_query($connection, $q1);

        while($row = mysqli_fetch_array($r1 )) {
            echo "<h1>Selected Book:</h1> 
                  <div>
                    <p>Name: $row[title]</p>
                    <p>Genre: $row[genre]</p>
                    <p>Price: $row[price]$</p>
                    <p>Author: $row[authorFirstName] $row[authorLastName]</p>
                  </div>
                  <hr>";
            $totalPrice =(float)$row['price'];
            $bookID = (int)$row['bookID'];
          }


        if($_SERVER['REQUEST_METHOD'] == 'POST') {
            if ( !empty($_POST['firstName']) && !empty($_POST['lastName']) && !empty($_POST['email']) && !empty($_POST['phoneNumber']))  {

                $firstName = strip_tags($_POST['firstName']);
                $lastName = strip_tags($_POST['lastName']);
                $email = strip_tags($_POST['email']);
                $phoneNumber = strip_tags($_POST['phoneNumber']);
                $orderDate = date("Y-m-d");
                
                $q = "INSERT INTO orders (firstName,lastName,emailAddress,phoneNumber,totalPrice,orderDate,bookID) VALUES ('$firstName', '$lastName','$email','$phoneNumber','$totalPrice','$orderDate','$bookID')";
            
                $r3 = @mysqli_query($connection,"SELECT * FROM Inventory where bookID = '$bookID'" );
                while($row = mysqli_fetch_array($r3 )) {
                    $availableQuantity = (int)$row['availableQuantity'];
                    if($availableQuantity > 0) {
                        if(mysqli_query($connection,"UPDATE Inventory SET availableQuantity = availableQuantity - 1 where bookID = '$bookID'" )) {
                            echo "<p>Inventory Updated.</p>";
                        } else {
                            echo "Error: ". mysqli_error($connection);
                        }
                            
                        if (mysqli_query($connection, $q)) {
                            echo "<p>New record created successfully</p>";
                        } else {
                            echo "Error: " . $q . "<br>" . mysqli_error($connection);
                        }
                                
                    }
                    else {
                        echo "<p>Sorry! Book is out of stock.</p>";
                    }
                    
                }
                               
                
                mysqli_close($connection);
            
            }
            else {
                echo "Input cannot be empty";
            }
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BookStore:: Checkout</title>
</head>
<body>
    <h1>Confirm Order</h1>
    <form method="post" action="checkout.php">
      <p><label>FirstName: </label><input type="text" name="firstName" /></p>
      <p><label>LastName: </label><input type="text" name="lastName" /></p>
      <p><label>Email Address: </label><input type="text" name="email" /></p>
      <p><label>phoneNumber: </label><input type="text" name="phoneNumber" /></p>
      <p>
        <input type="submit" />
      </p>
    </form>
</body>
</html>