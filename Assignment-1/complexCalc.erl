-module(complexCalc).
-import(math, [sin/1, cos/1, sqrt/1, pow/2, atan/1, pi/0]).
-export([add/4,subtract/4,multiply/4,divide/4,arg/1,argInv/1,absolute/1,print/1]).

add(R1,I1,R2,I2) -> 
	R3 = R1 + R2,	
	I3 = I1 + I2,	
	[R3,I3].

subtract(R1,I1,R2,I2) -> add(R1,I1,-R2,-I2).
	
multiply(R1,I1,R2,I2) -> 
	[R3,_]=add(R1*R2,0,-1*I1*I2,0),		% Real part of (R1 + iI1)*(R2 + iI2) = (R1*R2 - I1*I2)
	[_,I3]=add(0,I1*R2,0,R1*I2),		% Imaginary part of (R1 + iI1)*(R2 + iI2) = (R1*I2 + I1*R2)
	add(R3,I3,0,0).

divide(R1,I1,R2,I2) ->
	[TR2,TI2]=subtract(R2,0,0,I2),		%TR2 = Temporary Real part of Z2 ; TI2 = Temporary Imaginary part of Z2
	[NR1,NI2]=multiply(R1,I1,TR2,TI2),	%NR1 = Numerator Real part       ; NR2 = Numerator Imaginary part
	[D,_]=multiply(R2,I2,TR2,TI2),		% D =  Denominator
	[NR1/D,NI2/D].						% Final Answer

arg([R,I]) -> math:atan(I/R)*180/pi().

argInv(N) -> [math:cos(N),math:sin(N)].

absolute([R,I]) -> sqrt(pow(R,2) + pow(I,2)).

print([R,I]) ->
	io:fwrite(" Complex Number : ~w + i~w ~n Real Component : ~w ~n Imaginary Component : ~w ~n Argument : ~w ~n Magnitude : ~w ~n",[R,I,R,I, arg([R,I]), absolute([R,I])]).