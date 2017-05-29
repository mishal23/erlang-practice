-module (zip).
-export ([zip/2]).


zip([],_) -> [];
zip(_,[]) -> [];
zip([AH|AT],[BH|BT]) ->
		H1=AH,H2=BH,T1=AT,T2=BT,
		[{H1,H2}|zip(T1,T2)]. 
	