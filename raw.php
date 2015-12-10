
<h1>raw image</h1>
<?php


header('Content-type:image/jpg');
$image = new Imagick('image/image.jpg');


$image->thumbnailImage(1024,0);
echo $image;





?>