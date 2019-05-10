

% num_leaves(+Tree, -N)
% it is true if theN unify with the number of leaves 
% it Tree.

num_leaves(nil, 0).

num_leaves(t(_, L, R), TR):-
  L \= nil, R \= nil,
  num_leaves(L, RL),
  num_leaves(R, RR),
  TR is RL+RR.
  
num_leaves(t(_, nil, nil), 1).

num_leaves(t(_, nil, R), RR)
	R \= nil,
	num_leaves(R, RR).
num_leaves(t(_, L, nil, LR).
	L \= nil,
	num_leaves(L, LR).
	
tree1(t(9,t(5, t(2, nil, nil), t(6, nil, nil)),t(12, t(10, nil, nil), t(14,nil,nil)))).
  
 
 