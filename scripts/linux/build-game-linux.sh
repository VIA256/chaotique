#!/bin/sh

GAME_ROOT=$(pwd)
GAME_BUILDD=$GAME_ROOT/build/game
GAME_SRCD=$GAME_ROOT/src/game

GAME_C=$GAME_SRCD/main.c

CC="gcc"
CFLAGS="-std=c99 -Wpedantic"
NAME="Silly-Game"

BUILD_COMMAND="$CC $CFLAGS -o $GAME_BUILDD/$NAME $GAME_C"

#create build directory (assuming it doesnt already exist)
echo "creating directory: $GAME_BUILDD";
mkdir -p $GAME_BUILDD;

echo "building in directory: $GAME_BUILDD\n";
echo "$BUILD_COMMAND"
$BUILD_COMMAND &&
    echo "\nsuccessfully built executable: $NAME";
