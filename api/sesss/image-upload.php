<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Credentials: true');
header('Content-Type: application/json');
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Allow-Headers: Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods,Authorization,X-Requested-With');
 if($_FILES){
 $target_dir = "images/";
 echo $target_file = $target_dir . basename($_FILES["myFile"]["name"]);
 move_uploaded_file($_FILES["myFile"]["tmp_name"], $target_file);
} else {
	echo "No image";
}
?>