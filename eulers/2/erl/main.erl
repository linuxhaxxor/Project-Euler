#!/usr/bin/env escript
-module(euler2).
-export([fib/1, fibs_to/1]).


% Fibonacci via pattern matching, arity, & tail call recursion
fib(0) -> 0;
fib(1) -> 1;
fib(X) when X > 1 -> fib(X, 0, 1).
fib(0, _, Acc) -> Acc;
fib(Curr, Prev, Acc) when Curr > 0 -> fib(Curr-1, Acc, Prev+Acc).

fibs_to(Max) when Max > 1 -> fibs_to(Max, 1, [1]).
fibs_to(Max, Curr, Acc) ->
    Fib = fib(Curr),
    if Max < Fib -> Acc
     ; Max >= Fib -> fibs_to(Max, Curr+1, [Fib|Acc])
    end.

sum_even_fibs_to(Max) when Max > 1 ->
    lists:sum(lists:filter(fun (X) -> X rem 2 =:= 0 end, fibs_to(Max))).

main(_) ->
    io:format("~p~n", [sum_even_fibs_to(4000000)]).

