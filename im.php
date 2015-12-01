<?php
header('Content-type:image/jpg');
$image = new Imagick('image.jpg');


$image->thumbnailImage(100,0);
echo $image;


?>