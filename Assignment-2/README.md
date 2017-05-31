# ASSIGNMENT-2
### NOTE
- To check the timings of each program, following has been used while compiling(the output will be of the form ```{time,output}``` where time is in microseconds(μs)):-
```
timer:tc(file_name, function_name, input).
```
- To generate random lists of varying sizes where numbers are in range 1-100, following has been used:-
```
[rand:uniform(100) || _ <- lists:seq(1,size)].
```
### Some new terms used
<table>
  <tr>
  <td>Terms</td>
    <td>Function</td>
    <td>Example</td>
  </tr>
  <tr>
    <td>lists:max</td>
    <td>Returns maximum number in the list</td>
    <td>lists:max([1,4,6,3])  ->  6</td>
  </tr>
  <tr>
    <td>lists:delete</td>
    <td>Deletes the specified number from the specified list</td>
    <td>lists:delete(6,[1,4,6,2])  ->  [1,4,2]</td>
  </tr>
  <tr>
    <td>trunc</td>
    <td>Returns an integer by truncating number</td>
    <td>trunc(5.5)  ->  5</td>
  </tr>
  <tr>
    <td>lists:split</td>
    <td>Splits the lists into 2 at the desired position</td>
    <td>lists:split(2,[1,2,3,4,5])  ->  {[1,2],[3,4,5]}</td>
  </tr>
  <tr>
    <td>lists:foldl</td>
    <td>Takes successive elements from the list and performs the called action</td>
    <td>lists:foldl(fun(X, Sum) -> X + Sum end, 0, [1,2,3,4,5])  -> 15</td>
  </tr>
</table>


## Fibonacci Series

<table>
  <thead>
    <tr>
      <td>Value of N</td>
      <td>Non-Tail Recursive Time(in μs)</td>
      <td>Tail Recursive Time(in  μs)</td>
    </tr>
  </thead>
    <tr>
      <td>3</td>
      <td>3</td>
      <td>4</td>
    </tr>
    <tr>
      <td>10</td>
      <td>13</td>
      <td>6</td>
    </tr>
    <tr>
      <td>20</td>
      <td>1028</td>
      <td>8</td>
    </tr>
    <tr>
      <td>30</td>
      <td>34712</td>
      <td>8</td>
    </tr>
    <tr>
      <td>40</td>
      <td>3743890</td>
      <td>8</td>
    </tr>
    <tr>
      <td>50</td>
      <td>>1 minute</td>
      <td>9</td>
    </tr>
    <tr>
    <td>10<sup>2</sup></td>
      <td>-</td>
      <td>55</td>
    </tr>
    <tr>
    <td>10<sup>3</sup></td>
      <td>-</td>
      <td>485</td>
    </tr>
    <tr>
    <td>10<sup>4</sup></td>
      <td>-</td>
      <td>11408</td>
    </tr>
    <tr>
    <td>10<sup>5</sup></td>
      <td>-</td>
      <td>0.0636 s</td>
    </tr>
    <tr>
    <td>10<sup>6</sup></td>
    <td>-</td>
    <td><b>TLE</b></td>
    </tr>
</table>


## Sorting(in μs)
<table>
  <thead>
    <tr>
      <td>Size</td>
      <td>Bubble Sort</td>
      <td>Quick Sort</td>
      <td>Insertion Sort</td>
      <td>Selection Sort</td>
      <td>Merge Sort</td>
    </tr>
  </thead>
    <tr>
      <td>10</td>
      <td>5</td>
      <td>28</td>
      <td>8</td>
      <td>13</td>
      <td>7</td>
    </tr>
    <tr>
      <td>10<sup>2</sup></td>
      <td>1032</td>
      <td>125</td>
      <td>255</td>
      <td>426</td>
      <td>201</td>
    </tr>
    <tr>
      <td>10<sup>3</sup></td>
      <td>29502</td>μs
      <td>832</td>
      <td>6035</td>
      <td>11075</td>
      <td>701</td>
    </tr>
    <tr>
      <td>10<sup>4</sup></td>
      <td>2361592</td>
      <td>13910</td>
      <td>525574</td>
      <td>947437</td>
      <td>12520</td>
    </tr>
    <tr>
      <td>10<sup>5</sup></td>
      <td><b>TLE</b>(4.28 <b>min</b>)</td>
      <td>854307</td>
      <td>0.89 <b>min</b></td>
      <td><b>TLE</b>(1.579 <b>min</b>)</td>
      <td>96016</td>
    </tr>
    <tr>
      <td>10<sup>6</sup></td>
      <td><b>TLE</b></td>
      <td><b>TLE</b>(1.4 <b>min</b>)</td>
      <td><b>TLE</b></td>
      <td><b>TLE</b></td>
      <td>1110664</td>
    </tr>
    <tr>
      <td>10<sup>7</sup></td>
      <td><b>TLE</b></td>
      <td><b>TLE</b></td>
      <td><b>TLE</b></td>
      <td><b>TLE</b></td>
      <td>0.23 <b>min</b></td>
    </tr>
</table>
 
