# ASSIGNMENT-3

### NOTE

- To check the timings of each program, following has been used while compiling(the output will be of the form ```{time,output}``` where time is in microseconds(μs)):-
```
timer:tc(file_name, function_name, input).
```
- While compiling to check output for 2<sup>N</sup> the following has been used:-
```
1 bsl N
```

### Some new terms used
<table>
  <tr>
    <td>Term</td>
    <td>Function</td>
    <td>Example</td>
  </tr>
  <tr> 
    <td>band</td>
    <td>Bitwise & operator</td>
    <td>1 band 0. -> 0</td>
  </tr>
  <tr> 
    <td>bsl</td>
    <td>Left Shift operator</td>
    <td>1 bsl 5. -> 32</td>
  </tr>
</table>

### Recursive function

The recursive function obtained for the recursion given in problem:-

f(n)=1/6 * [7.(2<sup>n</sup>) + 8.(-1)<sup>n</sup>]  , so [Modular Exponentiation](http://www.geeksforgeeks.org/modular-exponentiation-power-in-modular-arithmetic/) has been used.

### Timer results

<table>
  <tr>
    <td>Value of N</td>
    <td>Time(in μs)</td>
  </tr>
  <tr> 
    <td>2<sup>1</sup></td>
    <td>125</td>
  </tr>
  <tr> 
    <td>2<sup>5</sup></td>
    <td>144</td>
  </tr>
  <tr> 
    <td>2<sup>10</sup></td>
    <td>147</td>
  </tr>
  <tr> 
    <td>2<sup>15</sup></td>
    <td>154</td>
  </tr>
  <tr> 
    <td>2<sup>20</sup></td>
    <td>152</td>
  </tr>
  <tr> 
    <td>2<sup>25</sup></td>
    <td>155</td>
  </tr>
  <tr> 
    <td>2<sup>30</sup></td>
    <td>153</td>
  </tr>
  <tr> 
    <td>2<sup>35</sup></td>
    <td>154</td>
  </tr>
  <tr> 
    <td>2<sup>40</sup></td>
    <td>162</td>
  </tr>
  <tr> 
    <td>2<sup>45</sup></td>
    <td>161</td>
  </tr>
  <tr> 
    <td>2<sup>50</sup></td>
    <td>165</td>
  </tr>
</table>
