<?php
//headers
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Credentials: true');
header('Content-Type: application/json');

//initializing our api
include_once('../core/init.php');

//instantiate post

$pays = new Payment($db);
$pays->order_id = isset($_GET['order_id']) ? $_GET['order_id'] : die();
$result = $pays->getOrderPayments();

//get the row count
$num = $result->rowCount();

//if($num > 0) {
    $pay_arr = array();
    $pay_arr['payments'] = array();
    $pay_arr['totals'] = array();

    $total=0;

    while($row = $result->fetch(PDO::FETCH_ASSOC)) {
        extract($row);
        $tot = $row['amount'];
        $total = $tot+$total;
        $pay_item = array(
            'id'                 =>$id,
            'order_id'           =>$order_id,
            'amount'             =>$amount,
            'reference'          =>$reference,
            'payment_mode'       =>$payment_mode,
            'created_date'       =>$created_date
            
        );
        array_push($pay_arr['payments'], $pay_item);
        
    }
    array_push($pay_arr['totals'], array('total'   =>$total));
    // convert to JSON and output
    echo json_encode($pay_arr);


// } else {

//     array_push($pay_arr['totals'], array('total'   => ''));

//     echo json_encode(array($pay_arr));

// }
?>