#!/bin/sh

GAME_ROOT=$(pwd)
SCRIPTD=$GAME_ROOT/scripts/linux


if [ "$1" = "all" ]; then
    sh $SCRIPTD/clean-game-linux.sh
elif [ "$1" = "game" ]; then
    sh $SCRIPTD/clean-game-linux.sh
else
    echo "clean options:";
    echo "- all, game";
fi
