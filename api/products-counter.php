<?php
//headers
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Credentials: true');
header('Content-Type: application/json');

//initializing our api
include_once('../core/init.php');

//Instatiate product
$product = new Product($db);
//products query
$result = $product->productsCounter();

//get the row count
$num = $result->rowCount();

if($num > 0) {
    $total=0;
     $product_arr = array();
     $product_arr['products'] = array();
    while($row = $result->fetch(PDO::FETCH_ASSOC)) {
        extract($row);
        //$prod = $row['name'];
        $total=$total+1;
        
    }
    echo $total;
    // $product_item = array(
    //         'total'               =>$total);
    //     array_push($product_arr['products'], $product_item);
    // // convert to JSON and output
    //   echo json_encode($product_arr);

} else {

    echo json_encode(array('message' =>'No product found'));

}
?>