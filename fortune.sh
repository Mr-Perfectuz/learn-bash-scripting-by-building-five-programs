#!/bin/bash
# Program to tell a person's fortune

echo -e "\n~~ Fortune Teller ~~\n"

# Declare the RESPONSES array
RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")

# Function to get a fortune
function GET_FORTUNE() {
  if [[ ! $1 ]]; then
    echo "Ask a yes or no question:"
  else
    echo "Try again. Make sure it ends with a question mark:"
  fi
  read QUESTION
}

# Loop until a question ending with '?' is provided
until [[ $QUESTION =~ \?$ ]]
do
  GET_FORTUNE "again"
done

# Generate a random index to select a fortune
N=$((RANDOM % ${#RESPONSES[@]}))

# Display the fortune with a newline
echo -e "\n${RESPONSES[$N]}"