#!/bin/bash

scr=/sys/class/leds/input3::scrolllock/brightness
caps=/sys/class/leds/input3::capslock/brightness
num=/sys/class/leds/input3::numlock/brightness

foo=0.1

echo 0 > $scr
echo 0 > $caps
echo 0 > $num

while true
do
        echo 1 > $num
        sleep $foo
        echo 0 > $num
        echo 1 > $caps
        sleep $foo
        echo 0 > $caps
        echo 1 > $scr
        sleep $foo
        echo 0 > $scr
        sleep $foo
        echo 1 > $scr
        sleep $foo
        echo 0 > $scr
        echo 1 > $caps
        sleep $foo
        echo 0 > $caps

done
