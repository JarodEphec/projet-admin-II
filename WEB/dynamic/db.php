<?php
$servername = "172.17.0.1";
$username = "remote";
$password = "remote";
$dbname = "toys";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
    echo "Connection réussie" . "<br>";
?>