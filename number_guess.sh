#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=<database_name> -t --no-align -c"

# generate random number 
min=1
max=1000
RANDOM_NUMBER=$(($RANDOM%($max-$min+1)+$min))
# read username
# if username exists 
# display welcome back 
# else display welcome first time 
# display game explanation
# run game 

# read user guess 
# if guess > target
# display hint
# increment tries
# try again
# else if guess < target
# display hint
# increment tries
# try again
# else if guess = target
# disiplay winning summary 
# else display invalid input

