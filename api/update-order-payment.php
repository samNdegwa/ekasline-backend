<?php
//headers
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Credentials: true');
header('Content-Type: application/json');
header('Access-Control-Allow-Methods: PUT');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods,Authorization,X-Requested-With');

//initializing our api
include_once('../core/init.php');

//instantiate post

$order = new Order($db);

// get raw posted data
$data = json_decode(file_get_contents("php://input"));

$order->id = $data->id;
$order->payment = $data->payment;

//create post
if($order->orderPaymentUpdate()) {
    echo json_encode(
        array('message' =>'Payment Updated.')
    );
} else {
    echo json_encode(
        array('message' =>'Payment not Updated.')
    );
}

?>