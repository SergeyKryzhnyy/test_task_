<?php

function array_swap(array $array, int $num): array
    {
        $zero_first = $array[0];
        $numb_pos = $array[$num];

        $array[0] = $numb_pos;
        $array[$num] = $zero_first;

        return $array;
    }

function array_sort(array $array):array
{
    for ($i=count($array); $i>1; $i--)
    {
        for ($j=0; $j<$i; $j++)
        {
            if ($array[0]<$array[$j])
            {
                $array = array_swap($array, $j);
            }
            $array = array_swap($array, $i-1);
        }
    }
    return $array;
}

$array = [1,3,4,5,2,3,4,5,3];
var_dump(array_sort($array));
