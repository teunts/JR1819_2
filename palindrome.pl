
% palindrom(+List)
% it is true if List is a palindrome.

% palindrome([a,b,c,b,a]).
% true
%
% palindrome[a,b,c,s,z]).
% false

palindrome(L):- myReverse(L, L).

% reverse(+List, -Result)
% it is true if Resultunify with a list with 
% same elements that List contains but in reverse order.

% reverse([1,2,3,4,5, R]).
% R = [5,4,3,2,1]

%1) myReverse([], []).
myReverse([], []).

%2) myReverse(n-1) -> myReverse(n)
%   myReverse(n) :- myReverse(n-1)
	myReverse([Head|Tail], R2):- myReverse(Tail, R),
append(R, [Head], R2).

% Iduction
%
% 1) p(n=)
% 2) p(n-1) -> p(n)
%    p(N):- N2 is N-1, p(N").

 

