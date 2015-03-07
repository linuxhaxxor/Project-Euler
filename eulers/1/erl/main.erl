#!/usr/bin/env escript

sum_ints_divis_by_3_or_5(X) ->
	lists:sum([Y || Y <- lists:seq(1, X), Y rem 3 =:= 0 orelse
                                          Y rem 5 =:= 0]).

main(_) ->
	io:format("~p~n", [sum_ints_divis_by_3_or_5(999)]).

