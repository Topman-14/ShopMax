<?php
$server_name="localhost";
$username="root";
$password="";
$database_name="shopmax_db";

$conn=mysqli_connect($server_name,$username,$password,$database_name);

if(!$conn)
{
    die("Connection Failed:" . mysqli_connect_error());
}

header("Location: shopmax.html"); 

if(isset($_POST['save']))
{
    $user_id = $_POST['user_id'];
    $name = $_POST['name'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $address = $_POST['address'];

    $sql_query = "INSERT IGNORE INTO customers (user_id,name,username,password,email,phone,address) VALUES('$user_id','$name','$username','$password','$email','$phone','$address')";

    if(mysqli_query($conn, $sql_query))
    {
        echo "Logged in sucessfully!";
    }

    else{
        echo "Error: " . $sql . "" . mysqli_error($conn);
    }
    mysqli_close($conn);
}

?>
