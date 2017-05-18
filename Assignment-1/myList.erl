- module(myList).

- import(lists,[append/2,last/1,member/2,sort/1,sum/1]).
- export([concat/2,last_element/1,check/2,arrange/1,sum_list/1]).

 concat(A,B) -> lists:append(A,B).
 last_element(A) -> lists:last(A).
 check(A,B) -> lists:member(A,B).
 arrange(A) -> lists:sort(A).
 sum_list(A) -> lists:sum(A).
