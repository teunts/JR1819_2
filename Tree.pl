% leaves(+Tree, -List)
% it is true if List unify with the labels
% in leaves of Tree.

% Induction
% 1) p(n0)
% 2) p(n-1) -> p(n)
     p(N):- N2 is N-1, p(N2). 
	 
	 
	 
num_leaves(nil, 0).

num_leaves(t(_, L, R), ):-
  num_leaves(L, RL )
  num_leaves(R, RR),
  
