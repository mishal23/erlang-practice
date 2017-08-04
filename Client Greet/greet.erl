-module (greet).
-export ([greet_time/0,time1/0,date1/0,greet_date/0,start/0,client/2,server/0,greet_all/0]).

%% Client Code %%
client(Input,Server_PID) when Input==date -> Server_PID ! date,
											io:format("<CLIENT>Server requested for Date~n");
client(Input,Server_PID) when Input==time -> Server_PID ! time,
											io:format("<CLIENT>Server requested for Time~n");
client(Input,Server_PID) when Input==both -> Server_PID ! both,
											io:format("<CLIENT>Server requested for Date & Time~n");

client(Input,Server_PID) -> Server_PID ! Input,
							io:format("<CLIENT>Input sent to server~n").


%% Server Code %%
server() ->
    receive
        date ->
        	io:format("<SERVER>Server received Date request~n", []),
        	spawn(greet,greet_date,[]);
            
        time ->
        	io:format("<SERVER>Server received Time request~n",[]),
        	spawn(greet,greet_time,[]);
        	
        both ->
        	io:format("<SERVER>Server received Date & Time request~n"),
        	spawn(greet,greet_all,[]);

        _ -> 
        	io:format("<SERVER>Improper request received from client~n")
    end.


%% Function to return time in list format %%
time1() -> tuple_to_list(erlang:time()).
			

%% Function to return date in list format %%
date1() -> tuple_to_list(erlang:date()).
	
%% Function to greet user with Time %%
greet_time() -> [Ht|Tt] = time1(),
			io:format("Time(hh:mm:ss):- ~p:~p:~p~n",[Ht,hd(Tt),lists:last(Tt)]),
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

%% Function to greet user with date %%
greet_date() -> [Hd|Td] = date1(),
			io:format("Date(dd/mm/yyyy):- ~p/~p/~p~n",[lists:last(Td),hd(Td),Hd]),
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

%% Function to greet user with Date & Time %%
greet_all() -> greet_time(),greet_date().	  


start() -> 
		io:format("~nCLIENT GREET PROGRAM~nTo know the date,type : date.~nTo know the time,type : time.~nTo know both date and time type : both.~n"),
		{ok,Input} = io:read("type: "),
		Server_PID = spawn(greet, server, []),
    	spawn(greet, client, [Input,Server_PID]).
