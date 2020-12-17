nd(3,1).
nd(3,49).
nd(49,31).
nd(49,50).
nd(31,19).
nd(31,46).
nd(19,17).
nd(19,21).
nd(46,38).

goal(0).
%1
depth(N,S):-
    depth_search([],N,S).

depth_search( P, N, [N | P] )  :-
   goal(N).

depth_search( P, N, S)  :-
  %write(N), write(' '),
  nd(N, M),
  depth_search( [N | P], M, S).

%2
breadth( S, R) :-
    breadth_search( [ [S] ], R).

breadth_search( [ [N| P] |_], [N | P] ) :-
    goal(N).

breadth_search( [ [N | P] | Ps], R) :-
   % write(N), write(' '),
    bagof([M,N|P], (nd(N,M)), P1),
    append(Ps, P1, Ps1), !,
    breadth_search( Ps1, R);
    breadth_search( Ps, R).


