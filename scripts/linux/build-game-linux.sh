#!/bin/sh

GAME_ROOT=$(pwd)
GAME_BUILDD=$GAME_ROOT/build/game
GAME_SRCD=$GAME_ROOT/src/game

GAME_CXX=$GAME_SRCD/main.cpp

CXX="g++"
CXXFLAGS="-std=c++14 -Wpedantic"
LDFLAGS="-lraylib -lGL -lm -lpthread -ldl -lrt -lX11"
NAME="Silly-Game"

BUILD_COMMAND="$CXX $CXXFLAGS $GAME_CXX $LDFLAGS -o $GAME_BUILDD/$NAME"
STRIP_COMMAND="strip $GAME_BUILDD/$NAME"

#create build directory (assuming it doesnt already exist)
echo "creating directory: $GAME_BUILDD";
mkdir -p $GAME_BUILDD;

echo "building in directory: $GAME_BUILDD\n";
echo "$BUILD_COMMAND"
$BUILD_COMMAND &&
    echo "\n$STRIP_COMMAND" &&
    $STRIP_COMMAND &&
    echo "\nsuccessfully built executable: $NAME";

