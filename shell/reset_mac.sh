#!/bin/bash

MAC="14:DA:E9:76:E8:29"
sudo ifconfig eth0 down
sudo ifconfig eth0 hw ether $MAC
sudo ifconfig eth0 up 

