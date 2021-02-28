<?php 

   # mysqli_connect(hostname, username, password, databasename);
   define('DB_USER', 'tusharPHPWinter2021');
   define('DB_PASSWORD','tushar');
   define('DB_HOST','localhost');
   define('DB_NAME','bookstoreschema');

   $connection = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME) 
                    OR die('could not connect ' . mysqli_connect_error());

   mysqli_set_charset($connection,'utf8');
?>