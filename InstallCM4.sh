#!/bin/bash


echo '================================================================================'
echo '|                                                                              |'
echo '|                   I-Install Software Installation Script                     |'
echo '|                                                                              |'
echo '================================================================================'

# Update package lists and upgrade installed packages
echo '>>> Full upgrade'
sudo apt update && sudo apt full-upgrade -y

# Set WiFi country to GB (United Kingdom)
echo '>>> Set WiFi country to GB'
sudo raspi-config nonint do_wifi_country GB

# Enable I2C interface
echo '>>> Skipping enabling I2C'
#sudo raspi-config nonint do_i2c 0

# Reboot the system
echo '>>> Starting reboot'
sudo reboot