-module(hello_world).
-export([add/2,hello/0]).

add(A,B)->A+B.

hello() ->
io:format("Hello, world!~n").
 