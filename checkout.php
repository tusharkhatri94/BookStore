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
          }
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
</body>
</html>