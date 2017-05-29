-module (unique).
-export ([unique/1]).

unique([]) -> [];
unique([H|T]) ->
	B = T,
	case lists:member(H,B) of
	 	true -> unique(B);
	 	false -> [H|unique(B)]
	 	
	 end.