factorial(0, 1).
factorial(N, F) :-
  N > 0,
  N1 is N - 1,
  factorial(N1, F1),
  F is N * F1.

display_type(X) :-
  (integer(X) -> write('Integer');
  atom(X) -> write('Symbol');
  write('Unknown type')).
