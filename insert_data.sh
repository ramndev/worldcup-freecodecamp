#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE teams,games")

{ cat games.csv | cut -f3 -d, | sort | uniq; cat games.csv | cut -f4 -d, | sort | uniq; } | sort | uniq | while read TEAM
do
  if [[  $TEAM != 'winner' && $TEAM != 'opponent' ]]
  then
    #get team_id
    TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$TEAM'")
    
    #If not team_id
    if [[ -z $TEAM_ID ]]
    then
      #insert team_id
      INSERT_TEAM=$($PSQL "INSERT INTO teams (name) VALUES ('$TEAM')")

      #get new team_id
      TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$TEAM'")
    fi  
  fi
done
cat games.csv | while IFS="," read YEAR ROUND W_TEAM O_TEAM W_GOALS O_GOALS
do
  if [[ $YEAR != year ]]
  then
    #get game_id and teams ids
    W_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$W_TEAM'")
    O_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$O_TEAM'")
    GAME_ID=$($PSQL "SELECT game_id FROM games WHERE winner_id = $W_ID AND opponent_id = $O_ID")

    #if no game_id
    if [[ -z $GAME_ID ]]
    then
      #insert game
      INSERT_GAME_INFO=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES ($YEAR,'$ROUND',$W_ID,$O_ID,$W_GOALS,$O_GOALS)")
      fi
      #get new game_id
      GAME_ID=$($PSQL "SELECT game_id FROM games WHERE winner_id = $W_ID AND opponent_id = $O_ID")
  fi
done
