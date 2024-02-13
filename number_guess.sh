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
  # increment guesses
  GUESSES=$(($GUESSES+1))
  # if guess is not a number
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then 
    # display invalid input
    echo "That is not an integer, guess again:"
    # try again
    GUESS
  # else if guess > target
  elif (( $GUESS > $RANDOM_NUMBER ))
  then 
    # display hint
    echo "It's lower than that, guess again:"
    # try again
    GUESS
  # else if guess < target
  elif (( $GUESS < $RANDOM_NUMBER ))
  then
    # display hint
    echo "It's higher than that, guess again:"
    # try again
    GUESS
  # else if guess = target
  else
    # insert game
    USER_ID="$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")"
    INSERT_GAME_RESULT="$($PSQL "INSERT INTO games(number_of_guesses, user_id) VALUES($GUESSES, $USER_ID)")"
    # display winning summary 
    echo "You guessed it in $GUESSES tries. The secret number was $RANDOM_NUMBER. Nice job!"  
  fi
}

# read username
echo "Enter your username:"
read USERNAME
# if username does not exist
USERNAME_RESULT="$($PSQL "SELECT * FROM users WHERE username='$USERNAME'")"
if [[ -z $USERNAME_RESULT ]] 
then
  # insert user
  INSERT_USER_RESULT="$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")"
  # display welcome first time 
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  # else display welcome back 
  GAMES_PLAYED="$($PSQL "SELECT COUNT(game_id) FROM users INNER JOIN games USING(user_id) WHERE username='$USERNAME'")"
  BEST_GAME="$($PSQL "SELECT MIN(number_of_guesses) FROM users INNER JOIN games USING(user_id) WHERE username='$USERNAME'")"
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
# display game explanation
echo "Guess the secret number between 1 and 1000:"
# run guess 
GUESS

