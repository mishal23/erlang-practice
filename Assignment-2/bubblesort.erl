-module (bubblesort).
-export ([bsort/1]).
-import (lists, [reverse/1]).

bsort(A) ->
	bsort(A,[],true).

bsort([],A,true) ->
	reverse(A);

bsort([],A,false) ->
	bsort(reverse(A),[],true);

bsort([X,Y|T],A,_) when X>Y ->
	bsort([X|T],[Y|A],false);

bsort([X|T],A,Halt) ->
	bsort(T,[X|A],Halt).
	