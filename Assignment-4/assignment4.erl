-module (assignment4).
-export ([two/3,three_a/2,three_b/2,three_c/2,four_a/1,four_b/1,four_c/2,four_d/2,five_a/1,five_b/1,six_a/1,six_b/1,eight/1,ten/2,solve/2]).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%% Question 1  %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%% Question 2  %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% NOTE:- Enter element , List ,Size of List - It will return the position if found else not_found
two(E,L,Size) -> two(E,L,Size,0).

two(E,[],Size,I) when I+1 =< Size -> I+1;
two(E,[],Size,I) when I+1 > Size -> not_found;
two(E,[E|T],Size,I) when is_integer(I) -> I+1;
two(E,[_|T],Size,I) when is_integer(I) -> two(E,T,Size,I+1).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%% Question 3  %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Part A - Checks if all elements are greater then Min value
three_a(L,Min) ->
	lists:all(fun(X) -> if X > Min -> true; true -> false end end,L).

% Part B - Checks if any element is greater then Min value
three_b(L,Min) -> 
	lists:any(fun(X) -> if X > Min -> true; true -> false end end,L).

% Part C - Checks if exactly 2 elements are greater then Min value
three_c(L,Min) ->	three_c(L,Min,0).

three_c([],Min,2) -> true;
three_c([],Min,X) when X/=2 -> false;
three_c([H|T],Min,Count) ->
	case H>Min of
		true -> three_c(T,Min,Count+1);
		false -> three_c(T,Min,Count)
	end.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%% Question 4  %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% The last element printed is the sum of elements and the rest is the elements printed in same & reverse order respectively
four_a(L) -> lists:foldl(fun(A, Sum) -> io:format("~w~n", [A]), Sum+A end, 0, L).
four_b(L) -> lists:foldr(fun(A, Sum) -> io:format("~w~n", [A]), Sum+A end, 0, L).

% Enter the List and the filter element to generate list of elements greater then Filter
four_c(L,Filter) -> lists:foldl(fun(A,Newlist) -> case A>Filter of true -> Newlist++[A];false -> Newlist end end,[],L).
four_d(L,Filter) -> lists:foldr(fun(A,Newlist) -> case A>Filter of true -> Newlist++[A];false -> Newlist end end,[],L).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%% Question 5  %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

five_a(L) -> lists:foldl(fun(A, Newlist) -> Newlist++[A*2] end, [], L).
five_b(L) -> lists:foldr(fun(A, Newlist) -> Newlist++[A*2] end, [], L).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%% Question 6  %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

six_a(L) -> lists:foldl(fun(A, Newlist) -> case (lists:last(Newlist) =:=A) of true -> Newlist;false -> Newlist++[A] end end, [hd(L)], L).
six_b(L) -> lists:foldr(fun(A, Newlist) -> case (lists:last(Newlist) =:=A) of true -> Newlist;false -> Newlist++[A] end end, [hd(L)], L).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%% Question 7  %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%% Question 8  %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

eight(L) -> lists:foldl(fun(A,Newlist) -> case A/=2 of true -> Newlist++[A*A];false -> Newlist end end,[],L).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%% Question 9  %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%% Question 10  %%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ten(L,MinSum) -> solve(lists:reverse(L),MinSum).
solve(L,MinSum) -> lists:foldl(fun(A,Newlist) -> case (lists:sum(Newlist)>MinSum) of true -> Newlist++[A] end end,[],L).
