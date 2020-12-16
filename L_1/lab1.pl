%1
female(evdokia).
female(masha).
female(korolina).
female(natasha).
female(yuna).

male(pheophan).
male(vasya).
male(nikolay).
male(maxim).

parent(evokia,vasya).
parent(evdokia,natasha).
parent(pheophan,vasya).
parent(pheophan,natasha).
parent(masha,korolina).
parent(vasya,korolina).
parent(natasha,yuna).
parent(natasha,maxim).
parent(nikolay,yuna).
parent(nikolay,maxim).

get_son(P) :-
    parent(P,X),
    male(X),
    format('~w is the son of ~w',[X,P]).
get_dauther(P) :-
    parent(P,X),
    female(X),
    format('~w is the dauther of ~w',[X,P]).

get_grandson(G) :-
    parent(G,Y),
    parent(Y,X),
    male(X),
    format('~w is the grandson of ~w',[X,G]).
get_granddauther(G) :-
    parent(G,Y),
    parent(Y,X),
    female(X),
    format('~w is the granddauther of ~w',[X,G]).


get_father(C) :-
    parent(X,C),
    male(X),
    format('~w is the father of ~w',[X,C]).
get_mother(C) :-
    parent(X,C),
    female(X),
    format('~w is the mother of ~w',[X,C]).

get_grandfather(C) :-
    parent(Y,C),
    parent(X,Y),
    male(X),
    format('~w is the grandfather of ~w',[X,C]).
get_grandmother(C) :-
    parent(Y,C),
    parent(X,Y),
    female(X),
    format('~w is the grandmother of ~w',[X,C]).

get_brother(S) :-
    parent(P,S),
    parent(P,X),
    male(X),
    format('~w is the brother of ~w',[X,S]).
get_sister(S) :-
    parent(P,S),
    parent(P,X),
    female(X),
    format('~w is the sister of ~w',[X,S]).

get_uncle(C):-
    parent(P,C),
    parent(G,P),
    parent(G,U),
    parent(G,F),
    male(F),
    male(U),
    F\=U,
    format('~w is the uncle of ~w',[U,C]).
get_aunt(C):-
    parent(P,C),
    parent(G,P),
    parent(G,A),
    parent(M,C),
    female(M),
    female(A),
    M\=A,
    format('~w is the aunt of ~w',[A,C]).
%2
sum_with_period(D,N,R):-
    N =< D,
    R = N,
    !.
sum_with_period(D,N,R):-
    N1 is N-D,
    sum_with_period(D,N1,R1),
    R is N+R1.
%3.1
pow(A,1,R):-
    R is A,
    !.
pow(A,M,R):-
    M1 is M - 1,
    pow(A,M1,R1),
    R is R1*A.
%3.2
pow2(A,1,R):-
    R is A,
    !.
pow2(A,M,R):-
    M1 is M/2,
    pow2(A,M1,R1),
    R is R1*R1.
%4
my_sum(N, N, N).

my_sum(From, To, S) :-
  Next is From + 2,
  my_sum(Next, To, T),
  S is T + From.
















