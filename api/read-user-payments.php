<?php
//headers
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Credentials: true');
header('Content-Type: application/json');

//initializing our api
include_once('../core/init.php');

//instantiate post

$product = new Payment($db);

$product->userId = isset($_GET['userId']) ? $_GET['userId'] : die();
$result = $product->getUserPayments();

//get the row count
$num = $result->rowCount();

if($num > 0) {
    $product_arr = array();
    $product_arr['payments'] = array();

    while($row = $result->fetch(PDO::FETCH_ASSOC)) {
        extract($row);
        $product_item = array(
            'id'                 =>$id,
            'order_id'           =>$order_id,
            'amount'             =>$amount,
            'reference'          =>$reference,
            'payment_mode'       =>$payment_mode,
            'created_date'       =>$created_date
            
        );
        array_push($product_arr['payments'], $product_item);
    }
    // convert to JSON and output
    echo json_encode($product_arr);


} else {

    echo json_encode(array('message' =>'No payment found'));

}
?>