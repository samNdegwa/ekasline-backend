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

$prod = new Product($db);

// get raw posted data
$data = json_decode(file_get_contents("php://input"));


$prod->title = $data->title;
$prod->image = $data->image;
$prod->description = $data->description;
$prod->price = $data->price;
$prod->quantity = $data->quantity;
$prod->short_desc = $data->short_desc;
$prod->sub_id = $data->sub_id;
$prod->mfr_part = $data->mfr_part;
$prod->manufacturer = $data->manufacturer;
$prod->package = $data->packages;
$prod->packaging = $data->packaging;

echo $data->title;
//create product
if($prod->registerProduct()) {
    echo json_encode(
        array('message' =>'Success', 'Payment Id' =>$prod->conn->lastInsertId())
    );
} else {
    echo json_encode(
        array('message' =>'Fail')
    );
}

?>