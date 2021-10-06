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

$product = new  Product($db);

// get raw posted data
$data = json_decode(file_get_contents("php://input"));

$product->id = $data->id;
$product->name = $data->name;
$product->image = $data->image;
$product->description = $data->description;
$product->price = $data->price;
$product->quantity = $data->quantity;
$product->short_desc = $data->short_desc;
$product->mfr_part = $data->mfr_part;
$product->manufacturer = $data->manufacturer;
$product->packaging = $data->packaging;

//create post
if($product->editProduct()) {
    echo json_encode(
        array('message' =>'Product Updated.')
    );
} else {
    echo json_encode(
        array('message' =>'Product not Updated.')
    );
}

?>