# assignment-1
## How to run:
(1) To find the number of zeroes (i.e. poses) for a given value of p2 (i.e. the length of the second strut), run
```matlab
f = @findNumberOfZeroes;
[numberOfZeroes, zeroes] = f(p2)
```

(2) To find the intervals over p2 that yield a certain number of poses run
```matlab
f = @findAllPossiblePoses;
[keySet, valueSet] = f()
```
This will return:
```
keySet = [0, 2, 4, 6...]
valueSet = [ [0, 3.8], [3.8, 4.9]...]
```
This can be interpreted as a key-value pair such that if p2 is an element of [0, 3.8) it will yield 0 poses, 
or if p2 is an element of [3.8, 4.9) it will yield 2 poses etc.

(3) To evaluate the structure over some theta, p2 run
```matlab
f = @evaluateStruts;
theta = -pi:.1:pi; %evaluate over theta = [-pi, pi]
out = f(theta, f(theta, p2))
```

Currently, evaluateStruts will NOT plot anything, however, to make it plot the structure for a given theta 
uncomment the commented out plot code in the function.
