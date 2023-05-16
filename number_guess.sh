#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo " ~~~~ Number Guesssing Game ~~~~"
echo -e "\nEnter your username:"

read USERNAME

#looking for username in users table
ID_VERIFY=$($PSQL "select user_id from users where username ilike '$USERNAME' ")

#If ID is not found then add Username to database.
if [[ -z $ID_VERIFY ]]
then
INSERT_USER=$($PSQL "insert into users(username) values( '$USERNAME')")

echo "Welcome, $USERNAME! It looks like this is your first time here."

#if ID is found in the table.
else 

echo "Welcome back, $USERNAME! You have played <games_played> games, and your best game took <best_game> guesses."

fi

#starting the guessing name

echo -e "\nGuess the secret number between 1 and 1000:"

#Generating Number from 1 to 1000
NUMBER=$[ $RANDOM % 1000 + 1]
echo $NUMBER

#Adding contants.

COUNTER=0
GUESS=0
#Looping through the inputs to count the guesses.

while [ $GUESS != $NUMBER ]
do

((COUNTER++))
read GUESS

echo $COUNTER

if [[ $GUESS < $NUMBER ]]
then 
echo "It's higher than that, guess again:"

else

echo "It's lowerr than that, guess again:"

fi

done
