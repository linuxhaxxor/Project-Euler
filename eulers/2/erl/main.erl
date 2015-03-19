#!/usr/bin/env escript
-module(euler2).
-export([fib/1, even/1, sum_even_fibs_to/1]).


% Fibonacci via pattern matching, arity, & tail call recursion
fib(0) -> 0;
fib(1) -> 1;
fib(X) when x > 1 -> fib(X, 1, 1).
fib(0, _, Acc) -> Acc;
fib(Curr, Prev, Acc) when Curr > 0 -> fib(Curr-1, Acc, (Prev+Acc)).

even(X) when is_integer(X) -> X rem 2 =:= 0.

% Well, this is some ugly LISP without composition and X should
% be the accumulator X, not the number of values.
sum_even_fibs_to(X) -> lists:sum(lists:filter(fun(Y) -> even(Y) end,
                                              lists:map(fun(Y) -> fib(Y) end,
                                                        lists:seq(1, X)))).

main(_) ->
    io:format("~p~n", [sum_even_fibs_to(40)]).

