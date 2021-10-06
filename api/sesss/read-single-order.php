<?php
//headers
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Credentials: true');
header('Content-Type: application/json');

//initializing our api
include_once('../core/init.php');

//instantiate post

$product = new Order($db);

$product->id = isset($_GET['id']) ? $_GET['id'] : die();
$result = $product->read_single_order();

$order_arr = array(
    'id'               =>$product->id,
    'user_id'          =>$product->user_id,
    'date_placed'      =>$product->date_placed,
    'amount_due'       =>$product->amount_due,
    'amount_paid'      =>$product->amount_paid,
    'status'           =>$product->status
            
    
);
print_r(json_encode($order_arr));
?>