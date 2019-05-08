
% pack(+List, -Result).
% it is true if a list contains repeated element 
% that are placed in seperate sublists

% p(n0)
% pack([],[]).

% p(n-1) -> p(n)


pack([Head|Tail,[[Head|Hr]|Tr] ):-
 pack(Tail, [Hr|Tr]).


% pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e], X).
% X = [[a,a,a,a],[b],[c,c].[a,a],[d],[e,e,e,e]]

% pack([a,a,a,b,c,c,a,a,d,e,e,e,e], X).
% X = [[a,a,a],[b],[c,c].[a,a],[d],[e,e,e,e]]

% pack([c,a,a,a,b,c,c,a,a,d,e,e,e,e], X).
% X = [[c][a,a,a],[b],[c,c].[a,a],[d],[e,e,e,e]]



