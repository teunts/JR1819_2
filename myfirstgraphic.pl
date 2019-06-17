

:- use_module(library(pce)).



draw_square(X, Y, Len) :-
  new(Window, picture('My window')),
  send(Window, size, size(400,400)),
  send(Window, open),
  X1 is X + Len,
  Y1 is Y + Len,
  
  send(Window, display, new(Pa, path)),
       (
	    send(Pa, append, point(X, Y)),
		send(Pa, append, point(X, Y1)),
		send(Pa, append, point(X1, Y1)),
		send(Pa, append, point(X1,Y)),
		send(Pa, closed, @on),
		send(Pa, fill_pattern, colour(@default, 0, 0, 0))
	    
 ).
