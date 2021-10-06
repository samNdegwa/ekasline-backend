<?php
$orderId = isset($_GET['id']) ? $_GET['id'] : die();
$userId = isset($_GET['userId']) ? $_GET['userId'] : die();


class MpesaApi
{

    public function getAccessToken()
    {
        $consumerKey = 'QpdbeP2J5c1CUwJwWc534A15AxQVsWuH';
        $consumerSecret = 'bwJAQT43nP41GxHo';

        $headers = ['Content-Type:application/json; charset=utf8'];

        $url = 'https://sandbox.safaricom.co.ke/oauth/v1/generate?grant_type=client_credentials';

        $curl_init = curl_init($url);
        curl_setopt($curl_init, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($curl_init, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($curl_init, CURLOPT_HEADER, FALSE);
        curl_setopt($curl_init, CURLOPT_USERPWD, $consumerKey . ':' . $consumerSecret);

        $result = curl_exec($curl_init);
        $result = json_decode($result);

        $access_token = $result->access_token;
        curl_close($curl_init);
        return $access_token;
    }

    public function makeStk($phone, $amount)
    {
        //  remove 07 for those that come with it

        if (substr($phone, 0, 2) == "07") {
            $phone = str_replace("07", "2547", $phone);
        } else if (substr($phone, 0, 4) == "+254") {
            $phone = str_replace("+2547", "2547", $phone);
        }

        $merchant_id = "174379";
        // $callback_url = "https://99b264543abd.ngrok.io/kama_api/mpesa_callback.php";
        $callback_url = "https://ekastech.com/store_backend/api/mpesa/mpesa_callback.php";
        $passkey = "bfb279f9aa9bdbcf158e97dd71a467cd2e0c893059b10f78e6b72ada1ed2c919";
        $account_reference = 'AS ' . $merchant_id;
        $transaction_description = 'Pay for Order:' . $phone;

        $timestamp = date("YmdHis");
        $password = base64_encode($merchant_id . $passkey . $timestamp);

        $access_token = $this->getAccessToken();

        $curl = curl_init();
        $endpoint_url = 'https://sandbox.safaricom.co.ke/mpesa/stkpush/v1/processrequest';
        curl_setopt($curl, CURLOPT_URL, $endpoint_url);
        curl_setopt($curl, CURLOPT_HTTPHEADER, array('Content-Type:application/json', 'Authorization:Bearer ' . $access_token)); //setting custom header

        $curl_post_data = array(
            'BusinessShortCode' => $merchant_id,
            'Password' => $password,
            'Timestamp' => $timestamp,
            'TransactionType' => 'CustomerPayBillOnline',
            'Amount' => $amount,
            'PartyA' => $phone,
            'PartyB' => $merchant_id,
            'PhoneNumber' => $phone,
            'CallBackURL' => $callback_url,
            'AccountReference' => $account_reference,
            'TransactionDesc' => $transaction_description
        );

        $data_string = json_encode($curl_post_data);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($curl, CURLOPT_POST, true);
        curl_setopt($curl, CURLOPT_POSTFIELDS, $data_string);
        $curl_response = curl_exec($curl);
        return $curl_response;
    }
}



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
if (isset($_GET['mpesa'])) {
    $phone = $_GET['phone'];
    $amount = $_GET['amount'];

    if ($amount <= 0) {
        echo json_encode([
            'status' => 'error',
            'message' => 'Invalid amount supplied'
        ]);
    } else {
        $api = new MpesaApi;
        $content = $api->makeStk($phone, $amount);
        $content = json_decode($content);
        $host = 'localhost';
        $user = 'root';
        $pass = '';
        $db = 'd';
        $con = connect();
        $sql = "insert into mpesa_request(`userId`,`phone`,`order_id`,`machant_id`,`amount`,`request_data`) values('".$userId."','" . $phone . "','". $orderId ."','" . $content->MerchantRequestID . "','" . $amount . "','" . json_encode($content) . "')";
        $con->query($sql) or die("Mysql error" . $sql);
        if ($content->ResponseCode == '0') {
            echo json_encode([
                'status' => 'success',
                'message' => 'Payment requested successfuly',
                'trace' => $content
            ]);
        } else {
            echo json_encode([
                'status' => 'error',
                'message' => 'There was an error',
                'trace' => $content
            ]);
        }
    }
} else {
    echo json_encode([
        'status' => 'error',
        'message' => 'please set amount and price'
    ]);
}
