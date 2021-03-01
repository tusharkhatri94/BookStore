
<?php 
  require('mysqli_connect.php');

  $q1 = 'SELECT * FROM books b JOIN authors a ON b.authorID = a.authorID JOIN Inventory i ON i.bookID = b.bookID WHERE availableQuantity > 0';
  $r1 = @mysqli_query($connection, $q1);

  while($row = mysqli_fetch_array($r1 )) {
    echo "<div>
            <p>Name: $row[title]</p>
            <p>Genre: $row[genre]</p>
            <p>Price: $row[price]$</p>
            <p>Author: $row[authorFirstName] $row[authorLastName]</p>
            <form method='POST' action='books.php'>
              <button name='id' value=$row[bookID] type='submit'>Add to Cart</button>
            </form>
          </div>
          <hr>";
  }

  if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Set the cookie

    $cookie_name = "book";
    $cookie_value = $_POST['id'];
    //$cookie_value = "John Doe";
    setcookie($cookie_name,$cookie_value, time()+3600);  /* expire in 1 hour */
    header("Location: checkout.php");


  }
    

  mysqli_free_result($r1);

  mysqli_close($connection);


?>