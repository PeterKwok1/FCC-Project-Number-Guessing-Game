#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# generate random number 
min=1
max=1000
RANDOM_NUMBER=$(($RANDOM%($max-$min+1)+$min))
# read username
echo -e "\nEnter your username"
read USERNAME
USERNAME_RESULT="$($PSQL "SELECT user FROM users WHERE user='$USERNAME'")"
# if username does not exist
if [[ -z $USERNAME_RESULT ]] 
then
  # display welcome first time 
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
else
  # else display welcome back 
  GAMES_PLAYED="$($PSQL "SELECT COUNT(game_id) FROM users INNER JOIN games USING(user_id) WHERE user=$USERNAME")"
  BEST_GAME="$($PSQL "SELECT MIN(number_of_guesses) FROM users INNER JOIN games USING(user_id) WHERE user=$USERNAME")"
  echo -e "\nWelcome back, $USERNAME_RESULT! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
# display game explanation
# run guess 

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

