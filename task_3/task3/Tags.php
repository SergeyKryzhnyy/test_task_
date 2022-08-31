<?php

include 'Template.php';

use foo\Template;

class Tags implements Template
{
    public $url;
    public $html_code;

    public function __construct($url)
    {
        $this->url = $url;
    }

    public function getTagsNumb()
    {
        $count_tags = 0;

        for ($i=0; $i<strlen($this->html_code); $i++)
        {
            $n = 0;
            if ($this->html_code[$i] == '<')
            {
                $count_tags++;
                $j=$i;
                while (true)
                {
                    $string .= $this->html_code[$j];
                    $j++;
                    if ($this->html_code[$j] == ' ' || $this->html_code[$j] == '>')
                    {
                        $mass[$n][] = $string . '>';
                        $string = '';
                        break;
                    }
                }
            }
        }
        $params['sum'] = $count_tags;
        $params['all_tags'] = $mass;
        return $params;
    }
}
