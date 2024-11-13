#!/bin/bash
echo $1 

echo "**************************INSTALING $1 *********************"

sudo apt-get update

echo "Update The Server Complete ****!"

sudo apt-get install $1 -y

echo ": Install Nginx >>>>>>"

sudo systemctl start $1 

echo ": start ngnix Service"

sudo systemctl enable $1

echo ": Enable Ngnix Service"

sudo systemctl status $1

echo ": status is....!"

echo "*************************** Complete All Steps *********************"

