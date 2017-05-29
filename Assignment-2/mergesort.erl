-module (mergesort).
-export ([msort/1]).

merge(A, []) -> A;
merge([], B) -> B;
merge([Ha|Ta], [Hb|Tb]) ->
  if
    Ha < Hb -> [Ha | merge(Ta, [Hb|Tb])];
    true -> [Hb | merge([Ha|Ta], Tb)]
  end.

msort([]) -> [];
msort([E]) -> [E];
msort(L) ->
  {A, B} = lists:split(trunc(length(L)/2), L),
  merge(msort(A), msort(B)).