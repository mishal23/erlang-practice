-module (reverse).
-export ([reverse/1]).

reverse([]) -> [];
reverse([H|T]) ->
	reverse(T) ++ [H].