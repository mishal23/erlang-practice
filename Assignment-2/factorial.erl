-module (factorial).
-export ([factorial/1,tailfactorial/1]).

factorial(N) when N==0 -> 1;
factorial(N) when N>0 ->
		N*factorial(N-1).

tailfactorial(N) -> tailfactorial(N,1).

tailfactorial(0,X) -> X;
tailfactorial(N,X) when N>0 -> tailfactorial(N-1,N*X).