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
	echo -e "$GREEN-- CoffeeScript$RST"
	coffee $COFFEE_FILE
	echo
fi

ERL_FILE="$PROBLEM_DIR/erl/main.erl"
if [ -f $ERL_FILE ] && type 'escript' &> /dev/null; then
	echo -e "$GREEN-- Erlang$RST"
	escript $ERL_FILE
	echo
fi

EXS_FILE="$PROBLEM_DIR/exs/main.exs"
if [ -f $EXS_FILE ] && type 'elixir' &> /dev/null; then
	echo -e "$GREEN-- Elixir$RST"
	elixir $EXS_FILE
	echo
fi

HS_FILE="$PROBLEM_DIR/hs/Main.hs"
if [ -f $HS_FILE ] && type 'runghc' &> /dev/null; then
	echo -e "$GREEN-- Haskell$RST"
	runghc $HS_FILE
	echo
fi

JS_FILE="$PROBLEM_DIR/js/main.js"
if [ -f $EXS_FILE ] && type 'node' &> /dev/null; then
	echo -e "$GREEN-- JavaScript$RST"
	node $JS_FILE
	echo
fi

PHP_FILE="$PROBLEM_DIR/php/main.php"
if [ -f $PHP_FILE ] && type 'php5' &> /dev/null; then
	echo -e "$GREEN-- PHP$RST"
	php -f $PHP_FILE
	echo
fi

PY_FILE="$PROBLEM_DIR/php/main.py"
if [ -f $PY_FILE ] && type 'python3' &> /dev/null; then
	echo -e "$GREEN-- Python$RST"
	python $PY_FILE
	echo
fi
