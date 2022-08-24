<?php
include_once 'db.php';

$sql = "SELECT DISTINCT commande_id, toy_name, user_name FROM commandes NATURAL JOIN toys NATURAL JOIN users";
$result = $conn->query($sql);
if ($result->num_rows >= 0) {
  // output data of each row
  echo "Liste commandes :" . "<br>";
  while($row = $result->fetch_assoc()) {
    echo "- id de commande: ". $row["commande_id"]."<br>". " - Jouet: " . $row["toy_name"]."<br>". "- Client: " . $row["user_name"]. "<br>";
  }
} else {
  echo "0 results";
}

$sql = "SELECT * FROM toys";
$result = $conn->query($sql);
if ($result->num_rows >= 0) {
  // output data of each row
  echo "Liste jouets :" . "<br>";
  while($row = $result->fetch_assoc()) {
    echo "- id du jouet: ". $row["toy_id"]."<br>". " - nom du jouet: " . $row["toy_name"]. "<br>";
  }
} else {
  echo "0 results";
}

$sql = "SELECT * FROM users";
$result = $conn->query($sql);
if ($result->num_rows >= 0) {
  // output data of each row
  echo "Liste utilisateurs :" . "<br>";
  while($row = $result->fetch_assoc()) {
    echo "- id de l'utilisateur: ". $row["user_id"]."<br>". " - nom de l'utilisateur: " . $row["user_name"]. "<br>";
  }
} else {
  echo "0 results";
}

$conn->close();
?>