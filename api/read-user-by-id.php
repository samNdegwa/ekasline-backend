<?php
//headers
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Credentials: true');
header('Content-Type: application/json');

//initializing our api
include_once('../core/init.php');

//instantiate post

$user = new User($db);

$user->id = isset($_GET['id']) ? $_GET['id'] : die();
//$user->id = isset($_GET['id']) ? $_GET['id'] : die();
$user->read_single_user_id();

$user_arr = array(
    'id'                =>$user->id,
    'password'          =>$user->password,
    'email'             =>$user->email,
    'fname'             =>$user->fname,
    'lname'             =>$user->lname,
    'phoneNumber'       =>$user->phoneNumber,
    'country'           =>$user->country,
    'county'            =>$user->county,
    'sub_county'        =>$user->sub_county,
    'city'              =>$user->city,
    'postal_address'    =>$user->postal_address,
    'role'              =>$user->role,
    'photoUrl'          =>$user->photoUrl
    
);
print_r(json_encode($user_arr));
?>