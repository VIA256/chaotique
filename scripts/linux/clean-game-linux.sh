#!/bin/sh

GAME_ROOT=$(pwd)
GAME_BUILDD=$GAME_ROOT/build/game

echo "deleting $GAME_BUILDD";
rm -r $GAME_BUILDD > /dev/null &&
    echo "cleaned build directory";

if [ $? -ne 0 ]; then
    echo "failed to clean build directory (was it already cleaned?)";
fi
