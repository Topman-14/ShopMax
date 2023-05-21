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

if(isset($_POST['buy']))
{
    $purchase_id = $_POST['purchase_id'];
    $product_name = $_POST['product_name'];
    $product_price = $_POST['product_price'];
    $product_quantity = $_POST['product_quantity'];
    $amount_paid = $_POST['amount_paid'];
    $customer_name = $_POST['customer_name'];
    $billing_address = $_POST['billing_address'];
    $email_address = $_POST['email_address'];
    $time = $_POST['time'];

    $sql_query = "INSERT IGNORE INTO sales (purchase_id,product_name,product_price,product_quantity,amount_paid,customer_name,billing_address,email_address,time) VALUES('$purchase_id', '$product_name', '$product_price', '$product_quantity', '$amount_paid', '$customer_name', '$billing_address', '$email_address', '$time')";

    if(mysqli_query($conn, $sql_query))
    {
        echo "Product bought successfully";
    }

    else{
        echo "Error: " . $sql . "" . mysqli_error($conn);
    }
    mysqli_close($conn);
}

?>
