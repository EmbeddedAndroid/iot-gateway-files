#!/bin/sh
echo 503 > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio503/direction
echo 0 > /sys/class/gpio/gpio503/value
sleep 1
echo 1 > /sys/class/gpio/gpio503/value
hciattach -s 115200 /dev/ttyAMA1 texas
