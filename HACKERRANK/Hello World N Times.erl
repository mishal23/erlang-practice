
%   Link:- https://www.hackerrank.com/challenges/fp-hello-world-n-times
%	Problem:- Hello World N times

-module (Hello World N Times).
-author("Mishal Shah").
-export ([main/0]).


main() ->
	{ok,[N]} = io:fread("","~d"),
	hello(N).

hello(N) when N=<0 -> ok;
hello(N) ->
	io:format("Hello World~n"),
	hello(N-1).
