-module (selectionsort).
-import(lists,[delete/2,max/1]).
-export ([selsort/2,print_array/1]).

%selsort(Ar) -> selsort(Ar,[])

selsort([],Sort)-> Sort;

selsort(Ar,Sort)->
	M=max(Ar),
	Ad=delete(M,Ar),
	selsort(Ad,[M|Sort]).

print_array([])->ok;

print_array([H|T])->
	io:format("~p~n",[H]),
	print_array(T).	
 
