
% separate(+E, +List, -Lowest, -Highest).
% it is true if Lowest is a list with the elemnts of List
% that are less or equal than E, and Highest is a list with
% elements of List that are higher than E.

separate(_, [], [], []).

separate(E, [Head|Tail], [Head|L], H):-
  Head =< E,
  separate(E, Tail, L, H).
  
separate(E, [Head|Tail],L ,[Head|H]):-
  Head > E,
  separate(E, Tail, L, H).  
  