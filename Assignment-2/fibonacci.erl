-module (fibonacci).
-export ([tfib/1,ntfib/1]).

% NonTail Recursive

ntfib(1) -> 1;
ntfib(2) -> 1;
ntfib(N) -> ntfib(N-1) + ntfib(N-2).


% Tail Recursive 

tfib(1) -> io:format("~p~n",[[1]]);
tfib(2) -> io:format("~p~n",[[1,1]]);
tfib(N) when N > 2 -> 
     hd(fibo(N-1,[1,1]) ).

% for numbers greater than 2
fibo(1,L) ->
	lists:reverse(L),
    L;
fibo(N,L) ->
    [H1,H2|_T] = L,
    fibo(N-1,[H1 + H2 | L]).