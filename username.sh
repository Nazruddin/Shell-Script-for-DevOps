#!/bin/bash


read -p "Enter username for making the new user: " username

sudo useradd -m $username

echo "you entered $username and user created succesfully!!"
