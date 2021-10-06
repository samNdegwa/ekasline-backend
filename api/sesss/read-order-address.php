<?php
//headers
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Credentials: true');
header('Content-Type: application/json');

//initializing our api
include_once('../core/init.php');

//instantiate post

$user = new Order($db);

$user->order_id = isset($_GET['order_id']) ? $_GET['order_id'] : die();
//$user->id = isset($_GET['id']) ? $_GET['id'] : die();
$user->read_single_order_address();

$user_arr = array(
    'id'                =>$user->id,
    'phone_number'      =>$user->phone_number,
    'county_to_send'    =>$user->county_to_send,
    'sub_county'        =>$user->sub_county,
    'city'              =>$user->city,
    'postal_address'    =>$user->postal_address,
    'description'       =>$user->description

    
);
print_r(json_encode($user_arr));
?>