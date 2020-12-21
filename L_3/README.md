# LAB_3

1.Program to count factorial.
Code:
```
fact(0, 1).

fact(N, R) :-
N > 0,
N1 is N - 1,
fact(N1, R1),
R is N * R1.

```
Result:
```
?- fact(8,R).
R = 40320 
```


2.Solve knight and liar task 1 variant(3/5=0.3 ; 3/2 = 1)
```
find_liar([A,B]) :-
sat(A =:= ~B),
sat(B =:= A*B).
```
Result:
```
?- find_liar(R).
R = [1, 0].
```
3.Solve crypto problem of 0 variant(3/10 = 0) CELERY+PEPPER+SAGE=GARLIC.
Code:
```
crypto(Vs) :-
Vs = [C,E,L,R,Y,P,S,A,G,L,I],
Vs ins 0..9,
CELERY #= Y + R*10 +E*100 + L*1000 + E*10000 + C*100000,
PEPPER #= R + E*10 + P*100 + P*1000 + E*10000 + R*100000,
SAGE #= E + G*10+ A*100 +S*1000,
GARLIC #= C + I*10 + L*100 + R*1000 + A*10000 + G*100000,

CELERY+ PEPPER + SAGE #= GARLIC,
C #\= 0,
P #\= 0,
S #\= 0,
G #\= 0,
label(Vs),
write('C - '),write(C),
write('\nE - '),write(E),
write('\nL - '),write(L),
write('\nR - '),write(R),
write('\nY - '),write(Y),
write('\nP - '),write(P),
write('\nS - '),write(S),
write('\nA - '),write(A),
write('\nG - '),write(G),
write('\nL - '),write(L),
write('\nI - '),write(I).

```
Result:
```
?- crypto(R).
C - 1
E - 0
L - 0
R - 1
Y - 0
P - 8
S - 2
A - 1
G - 9
L - 0
I - 0
R = [1, 0, 0, 1, 0, 8, 2, 1, 9|...] 
```
100010+808801+2190=911001.

