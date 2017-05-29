-module (fibonacci).
-export ([fib/1]).

fib(1) -> 0;
fib(2) -> 1;
fib(N) when N>0 -> fib(N-1) + fib(N-2);