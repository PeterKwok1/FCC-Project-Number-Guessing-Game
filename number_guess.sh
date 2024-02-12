#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# generate random number 
min=1
max=1000
RANDOM_NUMBER=$(($RANDOM%($max-$min+1)+$min))
# track number of guesses
GUESSES=0

# guess function
GUESS() {
# read user guess 
  read GUESS
# if guess > target
  if [[ $GUESS > $RANDOM_NUMBER ]] 
  then 
    # display hint
    echo "It's lower than that, guess again:"
    # increment tries
    GUESSES=$(($GUESSES+1))
    # try again
# else if guess < target
# display hint
# increment tries
# try again
# else if guess = target
# insert user and game
# display winning summary 
# else display invalid input
  fi
}

# read username
echo "Enter your username"
read USERNAME
# if username does not exist
USERNAME_RESULT="$($PSQL "SELECT user FROM users WHERE user='$USERNAME'")"
if [[ -z $USERNAME_RESULT ]] 
then
  # display welcome first time 
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
else
  # else display welcome back 
  GAMES_PLAYED="$($PSQL "SELECT COUNT(game_id) FROM users INNER JOIN games USING(user_id) WHERE user=$USERNAME")"
  BEST_GAME="$($PSQL "SELECT MIN(number_of_guesses) FROM users INNER JOIN games USING(user_id) WHERE user=$USERNAME")"
  echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
# display game explanation
echo "Guess the secret number between 1 and 1000:"
# run guess 
GUESS

