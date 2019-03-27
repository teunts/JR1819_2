% sum (X, Y, Z).
%it is true if Z is X + Y

% sum(n-1,....) -> sum(n,....)

sum(n(X), Y, n(Z)):- sum(X, Y, Z).


% substr(?X, ?Y, ?Z)
% it is true if Z is X - Y

substr(X, 0, X).
% substr(n-1, ...) -> substr(n, ...)

substr(X, n(Y), Z):- substr(X, Y, n(Z)).