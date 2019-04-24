% myAppend(+List1, +List2, -Result)
% it is true of Result is a list with 
% the elements of List1 followed bt
% the elements of List2.

myAppend([], List2, List2).

myAppend([Head|Tail], List2, [Head|R]):- myAppend(Tail, List2, R).

