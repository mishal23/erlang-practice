# ASSIGNMENT-2
### NOTE
- To check the timings of each program, following has been used while compiling(the output will be of the form ```{time,output}``` where time is in microseconds(μs)):-
```
timer:tc(file_name, function_name, input).
```
- To generate random lists of varying sizes, following has been used:-
```
[rand:uniform(100) || _ <- lists:seq(1,size)].
```

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
      <td>4.28 <b>min</b></td>
      <td>854307</td>
      <td>0.89 <b>min</b></td>
      <td>1.579 <b>min</b></td>
      <td>96016</td>
    </tr>
    <tr>
      <td>10<sup>6</sup></td>
      <td><b>TLE</b></td>
      <td>1.4 <b>min</b></td>
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
 
