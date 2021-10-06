<?php
//headers
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Credentials: true');
header('Content-Type: application/json');
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods,Authorization,X-Requested-With');

//initializing our api
include_once('../core/init.php');


$user = new Order($db);

// get raw posted data
$data = json_decode(file_get_contents("php://input"));

$user->user_id = $data->user_id;
$user->date_placed = $data->date_placed;
$user->amount_due = $data->amount_due;


//create order
if($user->addNewOrder()) {
    echo json_encode(
        array('message' =>'Success', 'user_id' =>$user->conn->lastInsertId())
    );
} else {
    echo json_encode(
        array('message' =>'Fail')
    );
}

?>