<?php
include 'submit.php';

header('Content-type:image/jpg');
$url = $result['ObjectURL'];
$image = new Imagick($url);


$image->thumbnailImage(100,0);
echo $image;

session_destory();
?>