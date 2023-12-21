<?php 
$server = "localhost";
$user = "root";
$pass = "";
$db = "penjualan";

$conn = mysqli_connect($server, $user, $pass, $db);

function query($query) {
    global $conn;
    $result = mysqli_query($conn, $query);
    $rows = [];
    while($row = mysqli_fetch_assoc($result)){
        $rows[] = $row;
    }
    return $rows;
}


?>