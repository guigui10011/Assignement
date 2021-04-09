#!/bin/bash

function help_user {
  if [[ ! $1 =~ ^[0-9]+$ ]];
  then
  echo "The answer must be a number"
  elif [[ $1 -lt $2 ]]
  then
  echo "There are more files than that"
  elif [[ $1 -gt $2 ]]
  then
  echo "Too much !"
  else
  echo "Correct Congratulation !"
  fi
}

# Get the number of files of the current number
files=$(($(ls -l | grep -v "^d" | wc -l)-1))

echo "How many files are there in the current directory ?"
while [[ ! $answer -eq  $files ]]
do
  read answer
  help_user $answer $files
done