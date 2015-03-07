#!/usr/bin/env bash

if [[ -z $1 ]]; then
	echo
	echo "USAGE: $(basename "$0") <problem #>"
	echo
	exit 0
fi

# Text colors
GREEN='\e[1;32m'
RST='\e[0m'

EULERS_DIR="$(dirname "$0")/eulers"
PROBLEM_DIR="$EULERS_DIR/$1"

if [ ! -d $PROBLEM_DIR ]; then
	echo "Challenge $1 appears to have not been completed"
	echo
	exit 0
fi

echo "-- CHALLENGE $1 --"

PROBLEM_FILE="$PROBLEM_DIR/problem.txt"
if [ -f $PROBLEM_FILE ]; then
	cat $PROBLEM_FILE
	echo
fi

COFFEE_FILE="$PROBLEM_DIR/coffee/main.coffee"
if [ -f $COFFEE_FILE ] && type 'coffee' &> /dev/null; then
	START=$(date +%s.%N)
	coffee $COFFEE_FILE
	END=$(date +%s.%N)
	echo -e "$GREEN\`- CoffeeScript$RST  : $(echo "$END - $START" | bc)"
	echo
fi

EXS_FILE="$PROBLEM_DIR/exs/main.exs"
if [ -f $EXS_FILE ] && type 'elixir' &> /dev/null; then
	START=$(date +%s.%N)
	elixir $EXS_FILE
	END=$(date +%s.%N)
	echo -e "$GREEN\`- Elixir$RST        : $(echo "$END - $START" | bc)"
	echo
fi

ERL_FILE="$PROBLEM_DIR/erl/main.erl"
if [ -f $ERL_FILE ] && type 'escript' &> /dev/null; then
	START=$(date +%s.%N)
	escript $ERL_FILE
	END=$(date +%s.%N)
	echo -e "$GREEN\`- Erlang$RST        : $(echo "$END - $START" | bc)"
	echo
fi

HS_FILE="$PROBLEM_DIR/hs/Main.hs"
if [ -f $HS_FILE ] && type 'runghc' &> /dev/null; then
	START=$(date +%s.%N)
	runghc $HS_FILE
	END=$(date +%s.%N)
	echo -e "$GREEN\`- Haskell$RST       : $(echo "$END - $START" | bc)"
	echo
fi

JS_FILE="$PROBLEM_DIR/js/main.js"
if [ -f $EXS_FILE ] && type 'babel-node' &> /dev/null; then
	START=$(date +%s.%N)
	babel-node $JS_FILE
	END=$(date +%s.%N)
	echo -e "$GREEN\`- JavaScript$RST    : $(echo "$END - $START" | bc)"
	echo
fi

LUA_FILE="$PROBLEM_DIR/lua/main.lua"
if [ -f $LUA_FILE ] && type 'luajit' &> /dev/null; then
	START=$(date +%s.%N)
	luajit $LUA_FILE
	END=$(date +%s.%N)
	echo -e "$GREEN\`- Lua$RST           : $(echo "$END - $START" | bc)"
	echo
fi

PHP_FILE="$PROBLEM_DIR/php/main.php"
if [ -f $PHP_FILE ] && type 'php5' &> /dev/null; then
	START=$(date +%s.%N)
	php -f $PHP_FILE
	END=$(date +%s.%N)
	echo -e "$GREEN\`- PHP$RST           : $(echo "$END - $START" | bc)"
	echo
fi

PY_FILE="$PROBLEM_DIR/py/main.py"
if [ -f $PY_FILE ] && type 'python3' &> /dev/null; then
	START=$(date +%s.%N)
	python3 $PY_FILE
	END=$(date +%s.%N)
	echo -e "$GREEN\`- Python$RST        : $(echo "$END - $START" | bc)"
	echo
fi

