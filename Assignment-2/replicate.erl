-module (replicate).
-export ([replicate/2]).

replicate(0,X) -> [];
replicate(N,X) when N>0 -> 
		[X] ++ replicate(N-1,X).
