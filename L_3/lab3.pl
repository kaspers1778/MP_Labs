:-use_module(library(clpb)).
:-use_module(library(clpfd)).

%1
fact(0, 1).

fact(N, R) :-
N > 0,
N1 is N - 1,
fact(N1, R1),
R is N * R1.

%2
find_liar([A,B]) :-
sat(A =:= ~B),
sat(B =:= A*B).

%3
crypto(Vs) :-
Vs = [C,E,L,R,Y,P,S,A,G,L,I],
Vs ins 0..9,
CELERY #= Y + R*10 +E*100 + L*1000 + E*10000 + C*100000,
PEPPER #= R + E*10 + P*100 + P*1000 + E*10000 + P*100000,
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













