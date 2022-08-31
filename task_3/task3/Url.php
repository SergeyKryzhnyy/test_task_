<?php

namespace url;

include 'BaseClass.php';

use BaseClass;

class Url extends BaseClass
{
    public $url;

    public function __construct($url)
    {
        $this->url = $url;
    }

    static public function getHtmlCode($url)
    {
        return file_get_contents($url);
    }
}