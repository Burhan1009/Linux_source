#!/bin/bash
#Display current date & time using shell commands
echo -e "\nGabbar: Whats time is it"
date
echo -e "\nGabbar: How long have the classes been going on?"
uptime
echo -e "\nGabbar: Who are you"
echo "Your : I am a $(whoami)"
echo "What is your current location"
echo "My current Location is $(pwd)"
echo -e "\nGabbar: What files do you have here?"
ls -l
echo -e "\nGabbar How many space we have"
echo "Sarkar $(df -h)"
echo -e "\nGabbar: How is the memory looking?"
free -h
