#!/bin/bash

# Update package lists and upgrade installed packages
sudo apt update && sudo apt full-upgrade -y

# Install git
sudo apt install git -y

# Set WiFi country to GB (United Kingdom)
sudo raspi-config nonint do_wifi_country GB

# Enable I2C interface
sudo raspi-config nonint do_i2c 0

# Reboot the system
sudo reboot
