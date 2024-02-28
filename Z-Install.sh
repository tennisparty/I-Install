#!/bin/bash

echo '================================================================================'
echo '|                                                                              |'
echo '|                   ZK GPIO 22 Prep Software Installation Script               |'
echo '|                                                                              |'
echo '================================================================================'

echo '>>> Adding wake pin to zkenv.conf'
echo "ZK_GPIO_WAKE_PIN=22" | sudo tee -a /var/lib/zymbit/zkenv.conf

echo '>>> Adding wake pin to config.txt'
echo '
# Zymkey GPIO 22 input
gpio=22=ip' | sudo tee -a /boot/firmware/config.txt
