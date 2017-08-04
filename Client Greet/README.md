# Client Greet
- The server is sent the request to perform the task from the client based on the input(Concurrent Programming).
- The program greets the user based on the time and date such as Morning,Afternoon,Evening,Night.
- Also the program has 3 set prototypes for holidays and one normal day set, so if it's that day, it greets the user with the message
- The set holidays are Uttarayan, Christmas and New Year.

### Demo
```
1> greet:start().
CLIENT GREET PROGRAM
To know the date,type : date.
To know the time,type : time.
To know both date and time type : both.
type: date.
<CLIENT>Server requested for Date
<SERVER>Server received Date request
<0.241.0>
Date(dd/mm/yyyy):- 4/8/2017
Just a normal day

2> greet:start().
      
CLIENT GREET PROGRAM
To know the date,type : date.
To know the time,type : time.
To know both date and time type : both.
type: time.
<CLIENT>Server requested for Time
<SERVER>Server received Time request
<0.245.0>
Time(hh:mm:ss):- 18:18:37
Evening

3> greet:start().
      
CLIENT GREET PROGRAM
To know the date,type : date.
To know the time,type : time.
To know both date and time type : both.
type: both.
<CLIENT>Server requested for Date & Time
<SERVER>Server received Date & Time request
<0.249.0>
Time(hh:mm:ss):- 18:18:42
Evening
Date(dd/mm/yyyy):- 4/8/2017
Just a normal day

4> greet:start().
      
CLIENT GREET PROGRAM
To know the date,type : date.
To know the time,type : time.
To know both date and time type : both.
type: arbi.
<CLIENT>Input sent to server
<SERVER>Improper request received from client
<0.253.0>
```