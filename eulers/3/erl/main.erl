#!/usr/bin/env escript

-module(euler3).
-export([main/1, largest_prime_factor/1]).


main(_) ->
    io:format("~p~n", [largest_prime_factor(600851475143)]).

factors(X) when X > 1 ->
    [1] ++ [F || F <- lists:seq(2, trunc(X/2)), X rem F =:= 0] ++ [X].


is_prime(X) when X < 2 -> false;
is_prime(2) -> true;
is_prime(X) when X rem 2 =:= 0 -> false;
is_prime(X) when X > 2 -> is_prime(X, 3).
is_prime(X, R) when R * R > X -> true;
is_prime(X, R) when X rem R =:= 0 -> false;
is_prime(X, R) -> is_prime(X, R+2).

prime_factors(X) -> lists:filter(fun (Y) -> is_prime(Y) end, factors(X)).

largest_prime_factor(X) -> lists:last(lists:sort(prime_factors(X))).

