:-use_module(library(clpb)).
:-use_module(library(clpfd)).
%1
neighbor(X, Y, List) :- nextto(X, Y, List).
neighbor(X, Y, List) :- nextto(Y, X, List) .
where_is_fish(R) :-
    Houses = [_,_,_,_,_],
    nth1(1, Houses, [norwegian,_,_,_,_]),
    member([englishman,_,_,_,red], Houses),
    nextto([_,_,_,_,green], [_,_,_,_,white], Houses),
    member([dane,_,_,tea,_], Houses),
    neighbor([_,_,marlboro,_,_], [_,cat,_,_,_], Houses),
    member([_,_,dunhill,_,yellow], Houses),
    member([german,_,rothmans,_,_], Houses),
    nth1(3, Houses, [_,_,_,milk,_]),
    neighbor([_,_,marlboro,_,_], [_,_,_,water,_], Houses),
    member([_,bird,pallmall,_,_], Houses),
    member([swede,dog,_,_,_], Houses),
    neighbor([norwegian,_,_,_,_], [_,_,_,_,blue], Houses),
    member([_,horse,_,_,blue], Houses),
    member([_,_,winfield,beer,_], Houses),
    member([_,_,_,coffee,green], Houses),

    member([R,fish,_,_,_], Houses).

%2
create_matrix(0, _, []).
create_matrix(N0, N, [Head|M]) :-
    N0 > 0,
    N1 is N0 - 1,
    length(Head, N),
    create_matrix(N1, N, M).

row_sum([], _).
row_sum([Row|M], Sum) :-
    sum(Row, #=, Sum),
    row_sum(M, Sum).

diagonal([], _, _, []).
diagonal([Row|M], Idx, P, [X|Ds]) :-
    nth1(Idx, Row, X),
    Idx1 is Idx+P,
    diagonal(M, Idx1, P, Ds).

magic_square(N, M) :-
    Nmax is N * N,
    Sum is N * (N * N + 1) / 2,
    create_matrix(N, N, M),
    flatten(M, Vars),
    Vars ins 1..Nmax,
    row_sum(M, Sum),
    transpose(M, TransM),
    row_sum(TransM, Sum),
    diagonal(M, N, -1, D1),
    sum(D1, #=, Sum),
    diagonal(M, 1, +1, D2),
    sum(D2, #=, Sum),
    all_different(Vars),
    label(Vars).

%3
sudoku(Rows) :-
    length(Rows, 9), maplist(same_length(Rows), Rows),
    append(Rows, Vs), Vs ins 1..9,
    maplist(all_distinct, Rows),
    transpose(Rows, Columns),
    maplist(all_distinct, Columns),
    Rows = [As,Bs,Cs,Ds,Es,Fs,Gs,Hs,Is],
    blocks(As, Bs, Cs),
    blocks(Ds, Es, Fs),
    blocks(Gs, Hs, Is).
blocks([], [], []).
blocks([N1,N2,N3|Ns1], [N4,N5,N6|Ns2], [N7,N8,N9|Ns3]) :-
    all_distinct([N1,N2,N3,N4,N5,N6,N7,N8,N9]),
    blocks(Ns1, Ns2, Ns3).

sudoku1(1,[
[_,_,3,_,_,8,_,_,6],
[_,_,_,4,6,_,_,_,_],
[_,_,_,1,_,_,5,9,_],
[_,9,8,_,_,_,6,4,_],
[_,_,_,_,7,_,_,_,_],
[_,1,7,_,_,_,9,5,_],
[_,2,4,_,_,1,_,_,_],
[_,_,_,_,4,6,_,_,_],
[6,_,_,5,_,_,8,_,_]
]).

