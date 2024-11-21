#!/bin/bash
# Program to tell a person's fortune

echo -e "\n~~ Fortune Teller ~~\n"

# Declare the RESPONSES array
RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")

# Display the RESPONSES array (Optional, for debugging)
# echo "${RESPONSES[@]}"

# Generate a random index to select a fortune
RANDOM_INDEX=$((RANDOM % ${#RESPONSES[@]}))
FORTUNE=${RESPONSES[$RANDOM_INDEX]}

# Display the fortune
echo "Your fortune: $FORTUNE"
declare -p RESPONSES