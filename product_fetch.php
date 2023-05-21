<?php
$host="localhost";
$username="root";
$password="";
$database="shopmax_db";

$connect = mysqli_connect($host, $username,$password, $database);

$sql = "SELECT * FROM products";
$results = mysqli_query($connect, $sql);
$json_array = array();

while($data = mysqli_fetch_assoc($results)){
    $json_array[] = $data;
}
echo json_encode($json_array)

?>
