-module (greet).
-export ([greet_time/0,time1/0,date1/0,greet_date/0,start/0]).

% Function to return time
time1() -> tuple_to_list(erlang:time()).
			

% Function to return date
date1() -> tuple_to_list(erlang:date()).
	

greet_time() -> [Ht|Tt] = time1(),
			io:format("Time:- ~p:~p:~p~n",[Ht,hd(Tt),lists:last(Tt)]),
			case ((Ht<12) and (Ht>=6)) of
				true -> io:format("Morning~n");
				false ->
					case ((Ht=<16) and (Ht>=12)) of
						true -> io:format("Afternoon~n");
						false -> 
							case ((Ht=<19) and (Ht>=12)) of
								true -> io:format("Evening~n");
								false -> io:format("Night~n")
							end
					end
			end.

greet_date() -> [Hd|Td] = date1(),
			io:format("Date:- ~p:~p:~p~n",[lists:last(Td),hd(Td),Hd]),
		   	case ((hd(Td)==12) and (lists:last(Td)==25)) of
				true -> io:format("Merry Christmas~n");
				false ->
					case ((hd(Td)==1) and (lists:last(Td)==14)) of
						true -> io:format("Happy Uttarayan~n");
						false -> 
							case ((hd(Td)==1) and (lists:last(Td)==1)) of
								true -> io:format("Happy New year~n");
								false -> io:format("Just a normal day~n")
							end
					end
			end.
	  
%greet() -> greet_time(),greet_date().
start() -> 
		spawn(test,greet_date,[]),
		spawn(test,greet_time,[]).