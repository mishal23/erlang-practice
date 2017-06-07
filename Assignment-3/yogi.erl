-module(yogi).
-export([input/1, function/4, nature/1]).


input([L]) ->
			N=hd([L]),
			io:fwrite("~w~n",[166666668*((function(2,N,1000000007,7)+nature(N)) rem 1000000007) rem 1000000007]).

%Implementation of O(logN) function
function(_, 0, Mod, X) -> X;
function(Y, N, Mod, X) when (N band 1)==1 -> function(((Y*Y) rem Mod), N bsr 1, Mod, ((X*Y) rem Mod));
function(Y, N, Mod, X) -> function((Y*Y) rem Mod, N bsr 1, Mod, X).


% To check if entered N is odd or even
nature(N) ->
	if (N rem 2)==1 ->
		OE= -8;

	true ->
		OE= +8
	end,

	OE.