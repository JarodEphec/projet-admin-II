<?php
$servername = "20.216.149.178";
$username = "remote";
$password = "remote";
$dbname = "toys";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT DISTINCT commande_id, toy_name, user_name FROM commandes NATURAL JOIN toys NATURAL JOIN users";
$result = $conn->query($sql);
echo "Connection réussie" . "<br>";
if ($result->num_rows >= 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    echo "- id de commande: ". $row["commande_id"]."<br>". " - Jouet: " . $row["toy_name"]."<br>". "- Client: " . $row["user_name>
  }
} else {
  echo "0 results";
}

$conn->close();
?>
