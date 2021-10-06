<?php
//headers
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Credentials: true');
header('Content-Type: application/json');
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods,Authorization,X-Requested-With');

//initializing our api
include_once('../core/init.php');

//instantiate post

$pay = new Payment($db);

// get raw posted data
$data = json_decode(file_get_contents("php://input"));

$pay->order_id = $data->order_id;
$pay->amount = $data->amount;
$pay->reference = $data->reference;
$pay->payment_mode = $data->payment_mode;
$pay->created_date = $data->created_date;


//create order
if($pay->createPayment()) {
    echo json_encode(
        array('message' =>'Success', 'Payment Id' =>$pay->conn->lastInsertId())
    );
} else {
    echo json_encode(
        array('message' =>'Fail')
    );
}

?>