#!/bin/sh

GAME_ROOT=$(pwd)
SCRIPTD=$GAME_ROOT/scripts/linux


if [ "$1" = "all" ]; then
    sh $SCRIPTD/build-game-linux.sh
elif [ "$1" = "game" ]; then
    sh $SCRIPTD/build-game-linux.sh
else
    echo "build options:";
    echo "- all, game";
fi
