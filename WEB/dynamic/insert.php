<?php
include_once 'db.php';
if(isset($_POST['submit']))
{    
     $toy_name = $_POST['toy_name'];
     $user_name = $_POST['user_name'];
     $toy_id = $_POST['toy_id'];
     $user_id = $_POST['user_id'];
     if(!empty($toy_name)){
        $sql = "INSERT INTO toys (toy_name)
     VALUES ('$toy_name')";
     if (mysqli_query($conn, $sql)) {
        echo "<br>"."nom de jouet bien ajouté !"."<br>";
     } else {
        echo "Error: " . $sql . ":-" . mysqli_error($conn);
     }
     }
     if(!empty($user_name)){
        $sql = "INSERT INTO users (user_name)
     VALUES ('$user_name')";
     if (mysqli_query($conn, $sql)) {
        echo "<br>"."nom d'utilisateur bien ajouté !*"."$user_name " ."*<br>";
     } else {
        echo "Error: " . $sql . ":-" . mysqli_error($conn);
     }
     }
     if($toy_id > 0 && $user_id > 0){
        $sql = "INSERT INTO commandes (toy_id, user_id)
     VALUES ('$toy_id', '$user_id')";
     if (mysqli_query($conn, $sql)) {
        echo "<br>"."nouvelle commande bien ajouté !"."<br>";
     } else {
        echo "Error: " . $sql . ":-" . mysqli_error($conn);
     }
     }

      
     $conn->close();
}
?>