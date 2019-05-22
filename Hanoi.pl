
% Hanoi Tower Game

%    |      |      |
%    |      |      |
%  -----  -----  -----
%    A      B      C
%

% hanoi(+Num, +A, +B, +C, -Result)
% it is true if Result unify with a list
% of movements needed to transport N discs
% from A to C using B as auxiliary tower.
% The game have the restriction that is not
% possible to have a disc go over 
% a smaller disc. It is not possible to 
% move more than one disc in each movement.


% 1. move n-1 discs from A to B usin C as 
%    auxiliary.
%
% 2. move disc 1 from A to C.
%
% 3. Move n-1 discs from B to C using A as
%    as auxiliary tower.

hanoi(1, A, _, C, [move(A,C)]).

hanoi(N, A, B, C, R):-
  N2 is N-1,
  hanoi(N2, A, C, B, R1),
  hanoi(1, A, _, C, R2),
  hanoi(N2, B, A, C, R3),
  append([R1, R2, R3], R).
  
  
  








 

