<?php

use url\Url;

include 'task3/Tags.php';
include 'task3/Url.php';

$url = 'https://github.com/SergeyKryzhnyy/RaspberryPi_panel_wordpress/blob/main/%D0%B8%D0%BD%D1%84%20%D0%BF%D0%B0%D0%BD%D0%B5%D0%BB%D1%8C%20%D0%BD%D0%B0%20%D0%B4%D0%B2%D0%B8%D0%B6%D0%BA%D0%B5_%D0%BA%D0%BE%D0%B4%D1%8B/tema/index.php';

$input = Url::getHtmlCode($url);

$obj = new Tags($input);
var_dump($obj->getTagsNumb());
