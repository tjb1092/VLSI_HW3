stepsize 7

vector A a0 a1 a2
vector B b0 b1 b2
vector C c0 c1 c2
vector P pin


analyzer A B C pin mout

setvector A 000
setvector B 000
setvector P 1
s
setvector A 111
setvector B 000
s
setvector A 000
setvector B 111
s
setvector A 101
setvector B 000
s
setvector A 010
setvector B 000
s
setvector A 101
setvector B 111
s
setvector A 010
setvector B 111
s
setvector A 000
setvector B 101
s
setvector A 000
setvector B 010
s
setvector A 111
setvector B 101
s
setvector A 111
setvector B 010
s
setvector A 101
setvector B 110
s
setvector A 101
setvector B 010
s
setvector A 010
setvector B 101
s
setvector A 010
setvector B 011
s
setvector A 001
setvector B 110
s
setvector A 010
setvector B 001
s
setvector A 100
setvector B 010
s
setvector A 111
setvector B 001
s
setvector A 100
setvector B 011
s

