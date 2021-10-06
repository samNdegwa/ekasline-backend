<?php
$postData = file_get_contents('php://input');

function connect()
{
    $host = 'localhost';
    // $user = 'root';
    // $pass = '';
    // $db = 'd';

    $user = 'ekastech_ekasline_shop';
    $pass = 'safcom2020';
    $db = 'ekastech_ekasline_shop';
    $con = new mysqli($host, $user, $pass, $db);

    return $con;
}

    $result = json_decode($postData);
    $merchant_id = $result->Body->stkCallback->MerchantRequestID;
    $result_code = $result->Body->stkCallback->ResultCode;
    $result_desc = $result->Body->stkCallback->ResultDesc;
    $MpesaReceiptNumber= $result->Body->stkCallback->CallbackMetadata->Item[1]->Value;

    $sql_add = "insert into mpesa_response(`machant_id`,`response_data`) values('" . $merchant_id . "','" . json_encode($postData) . "')";
    $con = connect();
    $con->query($sql_add);


    $sql = "select userId,phone,order_id,amount from mpesa_request where machant_id='" . $merchant_id . "';";

    $result = $con->query($sql);

    $phone = '';
    $amount = '';
    $orderId = '';

for($a=0;$a<$result->num_rows;$a++){
    $id = $name = '';
    $result->data_seek($a);   $userId = $result->fetch_assoc()['userId'];
    $result->data_seek($a);   $phone = $result->fetch_assoc()['phone'];
    $result->data_seek($a);   $orderId = $result->fetch_assoc()['order_id'];
    $result->data_seek($a);   $amount =$result->fetch_assoc()['amount'];

   
  }
  // record payments
  date_default_timezone_set('Africa/Nairobi');
  $now = new DateTime();
  $payDate = $now->format('Y-m-d  H:i:s');
  if($result_desc === 'The service request is processed successfully.') {
    sendSms($phone,$result_desc, $amount,$orderId);
    $sql_pay = "insert into payments(`userId`,`order_id`,`amount`,`reference`,`payment_mode`,`created_date`) values('".$userId."','" . $orderId . "','" . $amount . "','" . $MpesaReceiptNumber . "','Mpesa','" . $payDate . "')";
    $con = connect();
    $con->query($sql_pay);
    
  } else {

  }


function sendSms($phone,$sms,$amount,$order)
{
    require('AfricasTalkingGateway.php');
     $username  = "Ekas1";
     $apikey    = "13b44c5b52cbd78c4fd19d7a2aa1329ccee7f01bec94cac107dd2c8c937d1905";
    $gateway = new AfricasTalkingGateway($username, $apikey);
    $fb = 'sent';
    try {
        $message = "Dear Customer, KES".$amount.".00 has been received by Ekasline. This money will be used in payment of your order number ".$order." Thanks";
        $results = $gateway->sendMessage($phone, $message,'EKASTECH');
    } catch (AfricasTalkingGatewayException $e) {
        $fb = 'unsent';
    }
    return $fb;
}
