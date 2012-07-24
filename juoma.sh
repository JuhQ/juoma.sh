# This is a simple drinking game. Juoma means "a drink" in Finnish.
# Rules are simple:
# - List players
# - List available drinks
# - The person with the highest number has to drink the drink provided by the game, player can decide portion size
# - If you puke or pass out, you lose
# - If a drink runs out, it must be removed from the drink list
# - Last one who's not thrown up or passed out, IS THE WINNER!
# - Do not die
# - Have fun
# 
#  Juha Tauriainen @juha_tauriainen juha@bin.fi

#!/bin/bash

# list players here
players=("Juha" "Pekka" "Timo" "Liisa" "Maija");

# list drinks here
drinks=("Beer" "Koskenkorva" "Whiskey" "Milk");

winnerStr=""
winner=0

for i in "${players[@]}"
do
    roll=$(($RANDOM % 100))
    string=("$i rolls $((roll)) for drink ${drinks[$(($RANDOM % ${#drinks}))]}")
    if [ $roll -gt $winner ]
    then
        winner=$((roll))
        winnerStr=$string
    fi
    echo $string
done

echo "WINNER:" $winnerStr